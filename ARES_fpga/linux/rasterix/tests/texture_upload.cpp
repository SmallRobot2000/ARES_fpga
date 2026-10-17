// SPDX-License-Identifier: GPL-2.0-only
// Native: validate real GL-generated upload commands. --hardware: also read DDR
// back via RasterIX LOAD, then leave a textured triangle on the VGA output.
#include "../ares_dma_proxy_bus.hpp"
#include "texture-reservation.h"
#include "framebuffer-reservation.h"
#include "RIXGL.hpp"
#include "StdThreadRunner.hpp"
#include "renderer/devicedatauploader/DeviceDataUploader.hpp"
#include "renderer/threadedvertextransformer/ThreadedVertexTransformer.hpp"
#include "gl.h"
#include <array>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <memory>
#include <vector>

static void check(bool ok, const char* why) {
    if (!ok) { std::fprintf(stderr,"FAIL: %s\n",why); std::exit(1); }
}
class Capture final : public rr::IBusConnector {
public:
    explicit Capture(bool hardware) {
        if (hardware) real=std::make_unique<ares::DMAProxyBus>();
        else for(auto& b:buffers) b.resize(ares::proxyBufferSize);
    }
    void writeData(uint8_t index,uint32_t size,uint32_t offset=0) override {
        auto b=requestWriteBuffer(index);
        check(!offset && size>=8 && size<=b.size() && size%4==0,"DMA packet size/alignment");
        auto w=reinterpret_cast<const uint32_t*>(b.data());
        const unsigned op=w[0]>>28, n=w[0]&0xfffffff;
        if(op==0xd) {
            check(n==2048 && size==2056,"texture STORE length");
            check(w[1]>=0x97800000 && w[1]+n<=0x97c00000 && w[1]%2048==0,"texture STORE destination");
            pages[w[1]]=std::vector<uint8_t>(b.data()+8,b.data()+size);
            std::printf("STORE %08x: %u bytes, first texel %04x\n",w[1],n,w[2]&0xffff);
        } else if(op==9) {
            check(n+8==size,"STREAM payload length");
            for(unsigned pos=2;pos<size/4;) {
                auto cmd=w[pos++];unsigned len=0;
                switch(cmd>>28) {
                case 0:case 2:break;
                case 1:len=1;break;
                case 3:len=(cmd&0x3ff)/4;break;
                case 4:len=(cmd&0x1ff)/4;break;
                case 5:
                    len=cmd&0x7ffff;
                    check(len==4 && ((cmd>>19)&3)==0,"texture table page count/TMU");
                    check(pos+len<=size/4,"texture table bounds");
                    for(unsigned i=0;i<len;++i) {
                        check(pages.count(w[pos+i])==1,"table references a page not uploaded yet");
                        table[i]=w[pos+i];
                    }
                    ++tables;break;
                default:check(false,"unknown command");
                }
                check(pos+len<=size/4,"command bounds");pos+=len;
            }
        } else check(op==7 && size==8,"unexpected DDU command");
        if(real) real->writeData(index,size,offset);
    }
    void readData(uint8_t i,uint32_t n) override { check(bool(real),"native read");real->readData(i,n); }
    void blockUntilTransferIsComplete() override {if(real) real->blockUntilTransferIsComplete();}
    tcb::span<uint8_t> requestWriteBuffer(uint8_t i) override {
        if(real) return real->requestWriteBuffer(i);
        return {buffers.at(i)};
    }
    tcb::span<uint8_t> requestReadBuffer(uint8_t i) override {
        if(real) return real->requestReadBuffer(i);
        return {};
    }
    uint8_t getWriteBufferCount() const override {return ares::proxyBufferCount;}
    uint8_t getReadBufferCount() const override {return real?ares::proxyBufferCount:0;}
    std::map<uint32_t,std::vector<uint8_t>> pages;
    std::array<uint32_t,4> table{};
    unsigned tables=0;
private:
    std::unique_ptr<ares::DMAProxyBus> real;
    std::array<std::vector<uint8_t>,ares::proxyBufferCount> buffers;
};
int main(int argc,char** argv) {
    bool hardware=false, rgba=false, white=false;
    for(int i=1;i<argc;++i) {
        if(!std::strcmp(argv[i],"--hardware"))hardware=true;
        else if(!std::strcmp(argv[i],"--rgba"))rgba=true;
        else if(!std::strcmp(argv[i],"--white"))white=true;
        else {std::fprintf(stderr,"Usage: %s [--hardware] [--rgba] [--white]\n",argv[0]);return 1;}
    }
    if(hardware && (rix_check_texture_reserved("/sys/firmware/devicetree/base","/proc/iomem") ||
        rix_check_auxiliary_reserved("/sys/firmware/devicetree/base","/proc/iomem") ||
        rix_check_framebuffer_reserved("/sys/firmware/devicetree/base","/proc/iomem")))return 1;
    Capture bus(hardware);
    rr::devicedatauploader::DeviceDataUploader uploader(bus);
    rr::StdThreadRunner worker,upload;
    rr::threadedvertextransformer::ThreadedVertexTransformer device(uploader,worker,upload);
    check(rr::RIXGL::createInstance(device),"GL initialization");
    check(rr::RIXGL::getInstance().setRenderResolution(512,384),"resolution");
    auto finish=[&] {device.blockUntilDeviceIsIdle();upload.wait();uploader.blockUntilDeviceIsIdle();};
    std::array<uint16_t,4096> rgb{};
    std::array<uint8_t,16384> bytes{};
    for(unsigned y=0;y<64;++y) for(unsigned x=0;x<64;++x) {
        bool c=((x/8+y/8)&1)!=0;unsigned i=y*64+x;
        unsigned r=white?255:(c?240:190),g=white?255:(c?220:145),b=white?255:(c?90:65);
        rgb[i]=((r>>3)<<11)|((g>>2)<<5)|(b>>3);
        bytes[i*4]=r;bytes[i*4+1]=g;bytes[i*4+2]=b;bytes[i*4+3]=255;
    }
    GLuint tex;glGenTextures(1,&tex);glBindTexture(GL_TEXTURE_2D,tex);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    glPixelStorei(GL_UNPACK_ALIGNMENT,1);
    glTexImage2D(GL_TEXTURE_2D,0,rgba?GL_RGBA:GL_RGB,64,64,0,
        rgba?GL_RGBA:GL_RGB,rgba?GL_UNSIGNED_BYTE:GL_UNSIGNED_SHORT_5_6_5,
        rgba?static_cast<void*>(bytes.data()):static_cast<void*>(rgb.data()));
    check(glGetError()==GL_NO_ERROR,"GL texture creation");
    glViewport(0,0,512,384);
    glMatrixMode(GL_PROJECTION);glLoadIdentity();glOrtho(-1,1,-1,1,-1,1);
    glMatrixMode(GL_MODELVIEW);glLoadIdentity();
    glDisable(GL_LIGHTING);glDisable(GL_FOG);glDisable(GL_DEPTH_TEST);
    glDisable(GL_CULL_FACE);glDisable(GL_BLEND);glDisable(GL_STENCIL_TEST);
    glEnable(GL_TEXTURE_2D);glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_REPLACE);
    glClearColor(.1f,.1f,.3f,1);glClear(GL_COLOR_BUFFER_BIT);
    glBegin(GL_TRIANGLES);
    glTexCoord2f(0,0);glVertex3f(-.9f,-.9f,0);
    glTexCoord2f(1,0);glVertex3f(.9f,-.9f,0);
    glTexCoord2f(.5f,1);glVertex3f(0,.9f,0);
    glEnd();check(glGetError()==GL_NO_ERROR,"GL draw");
    rr::RIXGL::getInstance().swapDisplayList();finish();
    check(bus.pages.size()==4 && bus.tables>=3,"four uploaded pages and per-strip page tables");
    for(unsigned page=0;page<4;++page) {
        const auto& data=bus.pages.at(bus.table[page]);
        for(unsigned j=0;j<1024;++j) {
            unsigned i=page*1024+j;
            uint16_t expected=rgba ? ((bytes[4*i]>>4)<<12)|((bytes[4*i+1]>>4)<<8)|((bytes[4*i+2]>>4)<<4)|15 : rgb[i];
            uint16_t actual=data[2*j]|(data[2*j+1]<<8);
            if(actual!=expected) {std::fprintf(stderr,"texel %u: got %04x expected %04x\n",i,actual,expected);check(false,"uploaded pixel conversion");}
        }
        if(hardware) {
            std::array<uint8_t,2048> result{};
            check(uploader.readFromDeviceMemory({result},bus.table[page]-0x97800000),"DDR readback");
            for(unsigned j=0;j<result.size();++j) if(result[j]!=data[j]) {
                std::fprintf(stderr,"DDR mismatch at %08x: got %02x expected %02x\n",bus.table[page]+j,result[j],data[j]);
                check(false,"DDR texture payload");
            }
            std::printf("PASS: DDR readback %08x (2048 bytes)\n",bus.table[page]);
        }
    }
    std::puts("PASS: texture payload, addresses, upload-before-use and three-strip page tables");
    if(hardware)std::puts("Inspect VGA: a white/checker triangle on blue, without lighting or fog.");
    rr::RIXGL::destroy();finish();
}
