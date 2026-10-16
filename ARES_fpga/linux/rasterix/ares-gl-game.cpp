// SPDX-License-Identifier: GPL-2.0-only
// RasterIX / OpenGL 1.1 terminal-controlled 3D collection demo (POSIX/Linux)
#include <ares/gl_context.hpp>
#include <GL/gl.h>

#include <algorithm>
#include <chrono>
#include <ctime>
#include <limits>
#include <cmath>
#include <csignal>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cerrno>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>

namespace {
volatile std::sig_atomic_t running = 1;
void stop(int) { running = 0; }
constexpr float PI = 3.14159265358979323846f;
constexpr int WORLD_HALF = 32;
constexpr int PICKUP_COUNT = 14;
constexpr int TOWER_COUNT = 54;
constexpr int TEX_SIZE = 64;
constexpr float CAMERA_HEIGHT = 2.6f;
// Fog fades scenery into the sky; distant meshes are excluded CPU-side.
constexpr float FOG_START = 13.0f;
constexpr float FOG_END = 28.0f;
// Conservative radius adds clearance for a whole terrain cell/tower.
constexpr float CULL_DISTANCE = FOG_END + 2.0f;
constexpr float SKY_COLOR[4] = {0.28f, 0.48f, 0.75f, 1.0f};

struct Terminal {
    termios saved{};
    int flags = -1;
    bool active = false;
    Terminal() {
        if (!isatty(STDIN_FILENO)) return;
        if (tcgetattr(STDIN_FILENO, &saved) != 0) return;
        termios raw = saved;
        raw.c_lflag &= ~(ICANON | ECHO);
        raw.c_cc[VMIN] = 0;
        raw.c_cc[VTIME] = 0;
        if (tcsetattr(STDIN_FILENO, TCSANOW, &raw) != 0) return;
        flags = fcntl(STDIN_FILENO, F_GETFL, 0);
        if (flags >= 0) fcntl(STDIN_FILENO, F_SETFL, flags | O_NONBLOCK);
        active = true;
    }
    ~Terminal() {
        if (!active) return;
        tcsetattr(STDIN_FILENO, TCSANOW, &saved);
        if (flags >= 0) fcntl(STDIN_FILENO, F_SETFL, flags);
    }
};

struct Vec2 { float x, z; };
struct Pickup { float x, z; bool found = false; };
struct Tower { float x, z, h, w; };
struct Game {
    float x = 0, z = 24, yaw = 0;
    float moveForward = 0, moveSide = 0, turn = 0;
    int found = 0;
    Pickup pickups[PICKUP_COUNT]{};
    Tower towers[TOWER_COUNT]{};
    GLuint texture = 0;
    int grid = 32;
    bool wantQuit = false;
    bool texturesEnabled = true;
    bool rgb565 = true;
    bool depthEnabled = true;
    bool solidTexture = false;
    bool stencilEnabled = true;
    int trianglesSubmitted = 0;
    int escapeState = 0;
};

float terrainHeight(float x, float z) {
    return 1.65f * std::sin(x * 0.12f) * std::cos(z * 0.15f) +
           0.65f * std::sin(z * 0.31f + x * 0.19f);
}

void initWorld(Game& game) {
    for (int i = 0; i < PICKUP_COUNT; ++i) {
        game.pickups[i].x = 11.0f * std::sin(i * 2.17f);
        game.pickups[i].z = 18.0f - i * 3.2f;
    }
    for (int i = 0; i < TOWER_COUNT; ++i) {
        const int row = i / 9;
        const int col = i % 9;
        float x = -28.0f + col * 7.0f;
        float z = -27.0f + row * 10.0f;
        // Keep the central flight path open.
        if (std::fabs(x) < 16.0f) x += (x < 0 ? -11.0f : 11.0f);
        game.towers[i] = {x, z, 2.5f + float((i * 17) % 9), 1.7f + float(i % 3) * 0.35f};
    }
}

// Procedural RGBA texture, uploaded once; texture coordinates repeat on geometry.
void createTexture(Game& game) {
    unsigned char pixels[TEX_SIZE * TEX_SIZE * 4];
    uint16_t pixels565[TEX_SIZE * TEX_SIZE];
    for (int y = 0; y < TEX_SIZE; ++y) {
        for (int x = 0; x < TEX_SIZE; ++x) {
            const int p = (y * TEX_SIZE + x) * 4;
            const bool checker = (((x / 8) + (y / 8)) & 1) != 0;
            const int r = game.solidTexture ? 255 : (checker ? 240 : 190);
            const int g = game.solidTexture ? 255 : (checker ? 220 : 145);
            const int b = game.solidTexture ? 255 : (checker ? 90 : 65);
            pixels[p + 0] = static_cast<unsigned char>(r);
            pixels[p + 1] = static_cast<unsigned char>(g);
            pixels[p + 2] = static_cast<unsigned char>(b);
            pixels[p + 3] = 255;
            pixels565[y * TEX_SIZE + x] = static_cast<uint16_t>(
                ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3));
        }
    }
    glGenTextures(1, &game.texture);
    glBindTexture(GL_TEXTURE_2D, game.texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    if (game.rgb565) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, TEX_SIZE, TEX_SIZE, 0,
                     GL_RGB, GL_UNSIGNED_SHORT_5_6_5, pixels565);
    } else {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, TEX_SIZE, TEX_SIZE, 0,
                     GL_RGBA, GL_UNSIGNED_BYTE, pixels);
    }
    const GLenum error = glGetError();
    if (error != GL_NO_ERROR)
        std::fprintf(stderr, "Texture upload failed: GL error 0x%04x\n", error);
}

void texturedVertex(float x, float y, float z, float u, float v) {
    glTexCoord2f(u, v);
    glVertex3f(x, y, z);
}

// Conservative CPU-side view culling. GL_CULL_FACE removes backwards-facing
// polygons, NOT entire objects outside the screen. This avoids submitting them.
// Deliberately allow a wider field of view than the camera to avoid pop-in.
bool possiblyVisible(const Game& game, float x, float z, float radius) {
    const float dx = x - game.x, dz = z - game.z;
    const float angle = game.yaw * PI / 180.0f;
    const float forward = dx * std::sin(angle) - dz * std::cos(angle);
    const float side = dx * std::cos(angle) + dz * std::sin(angle);
    if (forward + radius < 0.1f) return false;
    // This is real distance culling, not just back-face or side-view culling.
    // Avoid calculating sqrtf for every cell/mesh.
    const float maxDist = CULL_DISTANCE + radius;
    if (dx * dx + dz * dz > maxDist * maxDist) return false;
    if (forward - radius > CULL_DISTANCE) return false;
    return std::fabs(side) <= 1.35f * std::max(forward, 0.0f) + radius + 2.0f;
}

// grid*grid*2 terrain triangles.
void drawTerrain(Game& game) {
    const int grid = game.grid;
    glColor3f(.85f, .96f, .75f);
    glBegin(GL_TRIANGLES);
    const float step = (2.0f * WORLD_HALF) / grid;
    for (int iz = 0; iz < grid; ++iz) {
        for (int ix = 0; ix < grid; ++ix) {
            const float x0 = -WORLD_HALF + ix * step;
            const float x1 = x0 + step;
            const float z0 = -WORLD_HALF + iz * step;
            const float z1 = z0 + step;
            const float midX = (x0 + x1) * 0.5f;
            const float midZ = (z0 + z1) * 0.5f;
            if (!possiblyVisible(game, midX, midZ, step * 0.8f)) continue;
            game.trianglesSubmitted += 2;
            texturedVertex(x0, terrainHeight(x0,z0), z0, x0 * .22f, z0 * .22f);
            texturedVertex(x0, terrainHeight(x0,z1), z1, x0 * .22f, z1 * .22f);
            texturedVertex(x1, terrainHeight(x1,z1), z1, x1 * .22f, z1 * .22f);
            texturedVertex(x0, terrainHeight(x0,z0), z0, x0 * .22f, z0 * .22f);
            texturedVertex(x1, terrainHeight(x1,z1), z1, x1 * .22f, z1 * .22f);
            texturedVertex(x1, terrainHeight(x1,z0), z0, x1 * .22f, z0 * .22f);
        }
    }
    glEnd();
}

// Six sides, two triangles per side = 12 triangles per cube.
void cube(float halfWidth, float height) {
    static const float corners[8][3] = {
        {-1,0,-1}, { 1,0,-1}, { 1,0, 1}, {-1,0, 1},
        {-1,1,-1}, { 1,1,-1}, { 1,1, 1}, {-1,1, 1}
    };
    static const int faces[6][4] = {
        {0,1,5,4}, {1,2,6,5}, {2,3,7,6},
        {3,0,4,7}, {4,5,6,7}, {3,2,1,0}
    };
    static const float uv[4][2] = {{0,0},{1,0},{1,1},{0,1}};
    glBegin(GL_TRIANGLES);
    for (int f = 0; f < 6; ++f) {
        for (int k = 0; k < 6; ++k) {
            // Outward-facing winding for GL_CCW / GL_BACK.
            const int j = (k == 0 ? 0 : k == 1 ? 2 : k == 2 ? 1 :
                           k == 3 ? 0 : k == 4 ? 3 : 2);
            const int c = faces[f][j];
            glTexCoord2f(uv[j][0], uv[j][1] * (height * 0.3f));
            glVertex3f(corners[c][0] * halfWidth,
                       corners[c][1] * height,
                       corners[c][2] * halfWidth);
        }
    }
    glEnd();
}

void drawTowers(Game& game) {
    for (int i = 0; i < TOWER_COUNT; ++i) {
        const Tower& t = game.towers[i];
        if (!possiblyVisible(game, t.x, t.z, t.w * 1.5f + 2.0f)) continue;
        game.trianglesSubmitted += 12;
        glPushMatrix();
        glTranslatef(t.x, terrainHeight(t.x,t.z) - 0.2f, t.z);
        glColor3f(.63f + (i%3)*.1f, .65f, .85f);
        cube(t.w, t.h);
        glPopMatrix();
    }
}

// A double pyramid (8 triangles), rotating above the terrain.
void drawPickup(const Pickup& p, float t) {
    const float y = terrainHeight(p.x, p.z) + 2.1f;
    glDisable(GL_TEXTURE_2D);
    glPushMatrix();
    glTranslatef(p.x, y + .20f * std::sin(t * 2.3f), p.z);
    glRotatef(t * 100.0f, 0, 1, 0);
    const float v[4][2] = {{-.45f,-.45f},{.45f,-.45f},{.45f,.45f},{-.45f,.45f}};
    glBegin(GL_TRIANGLES);
    for (int i = 0; i < 4; ++i) {
        const int j = (i + 1) % 4;
        glColor3f(.1f + .13f * (i&1), .75f, 1.0f);
        glVertex3f(0, .85f, 0);
        glColor3f(.05f, .25f, 1);
        glVertex3f(v[j][0], 0, v[j][1]);
        glColor3f(.2f, 1, .85f);
        glVertex3f(v[i][0], 0, v[i][1]);
        glColor3f(.03f, .4f, .8f);
        glVertex3f(0, -.85f, 0);
        glColor3f(.2f, 1, .85f);
        glVertex3f(v[i][0], 0, v[i][1]);
        glColor3f(.05f, .25f, 1);
        glVertex3f(v[j][0], 0, v[j][1]);
    }
    glEnd();
    glPopMatrix();
}

// Stencil demo: glowing cross-shaped landing markers beneath uncollected crystals.
// Pass 1 writes a circular mask into stencil without changing color or depth.
// Pass 2 draws two long bars, which stencil clips to that circular mask.
// No shaders, mipmaps or blending required; works with OpenGL ES 1.1.
constexpr int MARKER_SEGMENTS = 16;
constexpr int MARKER_TRIANGLES = MARKER_SEGMENTS + 4;

void markerCircle(const Pickup& p, float time) {
    const float radius = 1.25f + 0.12f * std::sin(time * 2.0f);
    const float centerY = terrainHeight(p.x, p.z) + 0.12f;
    glBegin(GL_TRIANGLES);
    for (int i = 0; i < MARKER_SEGMENTS; ++i) {
        const float a0 = (2.0f * PI * i) / MARKER_SEGMENTS;
        const float a1 = (2.0f * PI * (i + 1)) / MARKER_SEGMENTS;
        const float x0 = p.x + radius * std::cos(a0);
        const float z0 = p.z + radius * std::sin(a0);
        const float x1 = p.x + radius * std::cos(a1);
        const float z1 = p.z + radius * std::sin(a1);
        glVertex3f(p.x, centerY, p.z);
        glVertex3f(x0, terrainHeight(x0, z0) + 0.12f, z0);
        glVertex3f(x1, terrainHeight(x1, z1) + 0.12f, z1);
    }
    glEnd();
}

// Each bar extends far beyond the disc. The stencil test clips it to a disc.
void markerCross(const Pickup& p, float time) {
    const float halfLength = 2.0f;
    const float halfWidth = 0.10f + 0.035f * (1.0f + std::sin(time * 3.0f));
    glColor3f(0.08f, 0.95f, 0.9f);
    glBegin(GL_TRIANGLES);
    for (int axis = 0; axis < 2; ++axis) {
        const float xx = axis == 0 ? halfLength : halfWidth;
        const float zz = axis == 0 ? halfWidth : halfLength;
        const float x[4] = {p.x-xx, p.x+xx, p.x+xx, p.x-xx};
        const float z[4] = {p.z-zz, p.z-zz, p.z+zz, p.z+zz};
        const int idx[6] = {0, 1, 2, 0, 2, 3};
        for (int j = 0; j < 6; ++j) {
            const int k = idx[j];
            glVertex3f(x[k], terrainHeight(x[k], z[k]) + 0.15f, z[k]);
        }
    }
    glEnd();
}

void drawStencilMarkers(Game& game, float time) {
    if (!game.stencilEnabled) return;
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_FOG);
    glDisable(GL_CULL_FACE);
    glEnable(GL_STENCIL_TEST);
    glStencilMask(0xFF);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glDepthMask(GL_FALSE);

    for (const Pickup& p : game.pickups)
        if (!p.found && possiblyVisible(game, p.x, p.z, 2.0f)) {
            markerCircle(p, time);
            game.trianglesSubmitted += MARKER_SEGMENTS;
        }

    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glStencilMask(0x00);
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    for (const Pickup& p : game.pickups)
        if (!p.found && possiblyVisible(game, p.x, p.z, 2.0f)) {
            markerCross(p, time);
            game.trianglesSubmitted += 4;
        }

    glStencilMask(0xFF);
    glDisable(GL_STENCIL_TEST);
    glDepthMask(GL_TRUE);
    glEnable(GL_CULL_FACE);
    glEnable(GL_FOG);
}

void drawFrame(Game& game, float t) {
    game.trianglesSubmitted = 0;
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT |
            (game.stencilEnabled ? GL_STENCIL_BUFFER_BIT : 0));
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    // Positive yaw is a right turn, matching movement in update().
    glRotatef(game.yaw, 0, 1, 0);
    glTranslatef(-game.x, -(CAMERA_HEIGHT + terrainHeight(game.x, game.z)), -game.z);
    if (game.texturesEnabled) {
        glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, game.texture);
    } else {
        glDisable(GL_TEXTURE_2D);
    }
    drawTerrain(game);
    drawTowers(game);
    drawStencilMarkers(game, t);
    for (const Pickup& p : game.pickups) {
        if (!p.found && possiblyVisible(game, p.x, p.z, 1.5f)) {
            game.trianglesSubmitted += 8;
            drawPickup(p, t);
        }
    }
}

void handleInput(Game& game) {
    char buffer[128];
    ssize_t n;
    while ((n = read(STDIN_FILENO, buffer, sizeof(buffer))) > 0) {
        for (ssize_t i = 0; i < n; ++i) {
            unsigned char c = static_cast<unsigned char>(buffer[i]);
            if (game.escapeState == 1) {
                game.escapeState = (c == '[' ? 2 : 0);
                continue;
            }
            if (game.escapeState == 2) {
                game.escapeState = 0;
                if (c == 'A') game.moveForward += 0.7f;
                if (c == 'B') game.moveForward -= 0.7f;
                if (c == 'C') game.turn += 7.0f;
                if (c == 'D') game.turn -= 7.0f;
                continue;
            }
            if (c == 27) { game.escapeState = 1; continue; }
            switch (c) {
                case 'w': case 'W': game.moveForward += .7f; break;
                case 's': case 'S': game.moveForward -= .7f; break;
                case 'a': case 'A': game.turn -= 7.0f; break;
                case 'd': case 'D': game.turn += 7.0f; break;
                case 'j': case 'J': game.moveSide -= .7f; break;
                case 'l': case 'L': game.moveSide += .7f; break;
                case 'q': case 'Q': game.wantQuit = true; break;
                default: break;
            }
        }
    }
}

void update(Game& game, float dt) {
    // Each terminal keypress adds an impulse. Friction makes it work without key-up events.
    const float radians = game.yaw * PI / 180.0f;
    const float s = std::sin(radians), c = std::cos(radians);
    const float f = std::max(-6.0f, std::min(6.0f, game.moveForward));
    const float r = std::max(-6.0f, std::min(6.0f, game.moveSide));
    game.x += (s * f + c * r) * dt * 5.0f;
    game.z += (-c * f + s * r) * dt * 5.0f;
    game.yaw += game.turn * dt * 9.0f;
    game.x = std::max(-WORLD_HALF + 1.0f, std::min(WORLD_HALF - 1.0f, game.x));
    game.z = std::max(-WORLD_HALF + 1.0f, std::min(WORLD_HALF - 1.0f, game.z));
    const float damping = std::exp(-6.0f * dt);
    game.moveForward *= damping;
    game.moveSide *= damping;
    game.turn *= damping;
    for (Pickup& p : game.pickups) {
        if (p.found) continue;
        const float dx = p.x - game.x, dz = p.z - game.z;
        if (dx*dx + dz*dz < 2.2f * 2.2f) {
            p.found = true;
            ++game.found;
            std::printf("\nCollected crystal %d/%d!\n", game.found, PICKUP_COUNT);
            std::fflush(stdout);
        }
    }
    if (game.found == PICKUP_COUNT) game.wantQuit = true;
}

// Measurements are grouped by completed swap intervals. A long swap can include
// GPU work, DMA backpressure, driver synchronization and upload-thread waits.
struct TimingStats {
    double sumMs = 0.0;
    double minMs = std::numeric_limits<double>::infinity();
    double maxMs = 0.0;
    void add(double ms) {
        sumMs += ms;
        minMs = std::min(minMs, ms);
        maxMs = std::max(maxMs, ms);
    }
    double average(uint64_t n) const { return n ? sumMs / static_cast<double>(n) : 0.0; }
};
struct BenchWindow {
    uint64_t frames = 0;
    uint64_t tris = 0;
    uint64_t minTris = UINT64_MAX;
    uint64_t maxTris = 0;
    TimingStats input, draw, glcheck, swap, frame;
    void addTriangles(uint64_t n) {
        tris += n;
        minTris = std::min(minTris, n);
        maxTris = std::max(maxTris, n);
    }
};

template<class Duration>
double milliseconds(Duration d) {
    return std::chrono::duration<double, std::milli>(d).count();
}

double processCpuSeconds() {
    struct timespec ts {};
    if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts) != 0) return -1.0;
    return static_cast<double>(ts.tv_sec) + static_cast<double>(ts.tv_nsec) * 1e-9;
}

uint64_t parseOptions(int argc, char** argv, Game& game) {
    uint64_t frames = 0;
    for (int i = 1; i < argc; ++i) {
        if (std::strcmp(argv[i], "--frames") == 0 && i + 1 < argc) {
            char* end = nullptr;
            unsigned long long x = std::strtoull(argv[++i], &end, 10);
            if (!x || !end || *end) { std::fprintf(stderr, "Bad --frames\n"); std::exit(1); }
            frames = static_cast<uint64_t>(x);
        } else if (std::strcmp(argv[i], "--grid") == 0 && i + 1 < argc) {
            game.grid = std::atoi(argv[++i]);
            if (game.grid < 8 || game.grid > 128) {
                std::fprintf(stderr, "--grid must be 8..128\n"); std::exit(1);
            }
        } else if (std::strcmp(argv[i], "--rgba") == 0) {
            game.rgb565 = false;
        } else if (std::strcmp(argv[i], "--no-texture") == 0) {
            game.texturesEnabled = false;
        } else if (std::strcmp(argv[i], "--no-depth") == 0) {
            game.depthEnabled = false;
        } else if (std::strcmp(argv[i], "--no-stencil") == 0) {
            game.stencilEnabled = false;
        } else if (std::strcmp(argv[i], "--solid-texture") == 0) {
            game.solidTexture = true;
        } else {
            std::fprintf(stderr, "Usage: %s [--grid 8..128] [--frames COUNT] [--no-texture] [--no-depth] [--solid-texture] [--rgba] [--no-stencil]\n", argv[0]);
            std::exit(1);
        }
    }
    return frames;
}
} // namespace

int main(int argc, char** argv) {
    Game game;
    const uint64_t frameLimit = parseOptions(argc, argv, game);
    std::signal(SIGINT, stop);
    std::signal(SIGTERM, stop);
    ares::GLContext context;
    if (!context) return 1;
    context.setVSync(false);
    glViewport(0, 0, ares::GLContext::width, ares::GLContext::height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    const float aspect = float(ares::GLContext::width) / float(ares::GLContext::height);
    glFrustum(-.08f * aspect, .08f * aspect, -.08f, .08f, .1f, 110.0f);
    glClearColor(SKY_COLOR[0], SKY_COLOR[1], SKY_COLOR[2], SKY_COLOR[3]);
    glClearDepth(1);
    if (game.depthEnabled) glEnable(GL_DEPTH_TEST);
    else glDisable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glDepthMask(GL_TRUE);
    glFrontFace(GL_CCW);
    glCullFace(GL_BACK);
    glEnable(GL_CULL_FACE);
    glDisable(GL_STENCIL_TEST);
    glClearStencil(0);
    glStencilMask(0xFF);
    glDisable(GL_BLEND);
    glDisable(GL_LIGHTING);
    // OpenGL ES 1.1 fixed-function fog: no shader or mipmap required.
    // Fog color matches the clear color so distant surfaces disappear smoothly.
    glFogfv(GL_FOG_COLOR, SKY_COLOR);
    glFogi(GL_FOG_MODE, GL_LINEAR);
    glFogf(GL_FOG_START, FOG_START);
    glFogf(GL_FOG_END, FOG_END);
    glEnable(GL_FOG);
    glShadeModel(GL_SMOOTH);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    initWorld(game);
    createTexture(game);
    const int triangles = game.grid * game.grid * 2 + TOWER_COUNT * 12 +
                          PICKUP_COUNT * (8 + (game.stencilEnabled ? MARKER_TRIANGLES : 0));
    std::printf("GL_VENDOR: %s\nGL_RENDERER: %s\nGL_VERSION: %s\n",
                glGetString(GL_VENDOR), glGetString(GL_RENDERER), glGetString(GL_VERSION));
    std::printf("RasterIX Crystal Flight | W/S: forward/back | A/D: turn | J/L: strafe | Q: quit\n");
    std::printf("Collect %d crystals. Nominal scene: %d triangles (%d terrain, %d towers, %d crystals).\n",
                PICKUP_COUNT, triangles, game.grid * game.grid * 2,
                TOWER_COUNT * 12, PICKUP_COUNT * 8);
    std::printf("Terminal key autorepeat controls movement; input must come from a TTY.\n");
    GLint stencilBits = 0;
    glGetIntegerv(GL_STENCIL_BITS, &stencilBits);
    std::printf("Stencil crystal ground markers: %s | GL_STENCIL_BITS: %d\n",
                game.stencilEnabled ? "ON" : "OFF", stencilBits);
    if (game.stencilEnabled && stencilBits == 0)
        std::puts("WARNING: No stencil bits reported; enable stencil in RasterIX FPGA config if the markers do not appear.");
    std::printf("Fog: linear %.1f..%.1f units | CPU distance cull: %.1f units | rendering: %dx%d\n",
                FOG_START, FOG_END, CULL_DISTANCE,
                ares::GLContext::width, ares::GLContext::height);
    std::printf("Textures: %s (%s, %s) | depth: %s | backface + CPU visibility culling | no mipmaps\n",
                game.texturesEnabled ? "ON" : "OFF", game.rgb565 ? "RGB565" : "RGBA8888",
                game.solidTexture ? "solid white" : "checker", game.depthEnabled ? "ON" : "OFF");
    std::fflush(stdout);
    Terminal terminal;
    if (!terminal.active) std::fprintf(stderr, "Warning: stdin is not a TTY, controls disabled.\n");
    using Clock = std::chrono::steady_clock;
    using Counters = ares::GLPerformanceCounters;
    const auto start = Clock::now();
    auto previous = start;
    auto reportStart = start;
    double reportCpuStart = processCpuSeconds();
    Counters previousCounters = context.performanceCounters();
    BenchWindow bench;
    const uint64_t totalFramesLimit = frameLimit;
    uint64_t renderedFrames = 0;

    while (running && !game.wantQuit &&
           (!totalFramesLimit || renderedFrames < totalFramesLimit)) {
        const auto t0 = Clock::now();
        float dt = std::chrono::duration<float>(t0 - previous).count();
        previous = t0;
        dt = std::max(.0f, std::min(.05f, dt));
        handleInput(game);
        update(game, dt);
        const auto t1 = Clock::now();
        const float seconds = std::chrono::duration<float>(t0 - start).count();
        drawFrame(game, seconds);
        const auto t2 = Clock::now();
        const GLenum err = glGetError();
        const auto t3 = Clock::now();
        if (err != GL_NO_ERROR) {
            std::fprintf(stderr, "OpenGL error 0x%04x\n", err);
            glDeleteTextures(1, &game.texture);
            return 1;
        }
        context.swapBuffers();
        const auto t4 = Clock::now();
        ++renderedFrames;
        ++bench.frames;
        bench.addTriangles(static_cast<uint64_t>(game.trianglesSubmitted));
        bench.input.add(milliseconds(t1 - t0));
        bench.draw.add(milliseconds(t2 - t1));
        bench.glcheck.add(milliseconds(t3 - t2));
        bench.swap.add(milliseconds(t4 - t3));
        bench.frame.add(milliseconds(t4 - t0));

        const double reportSeconds = std::chrono::duration<double>(t4 - reportStart).count();
        const bool lastFrame = totalFramesLimit && renderedFrames >= totalFramesLimit;
        if (reportSeconds >= 2.0 || lastFrame) {
            const Counters counters = context.performanceCounters();
            const double cpuNow = processCpuSeconds();
            const uint64_t txBytes = counters.mm2sBytes - previousCounters.mm2sBytes;
            const uint64_t txTransfers = counters.mm2sTransfers - previousCounters.mm2sTransfers;
            const uint64_t rxTransfers = counters.s2mmTransfers - previousCounters.s2mmTransfers;
            const double cpuDelta = (cpuNow >= 0.0 && reportCpuStart >= 0.0) ?
                                    cpuNow - reportCpuStart : -1.0;
            const double invSeconds = reportSeconds > 0.0 ? 1.0 / reportSeconds : 0.0;
            const double n = static_cast<double>(bench.frames);
            std::printf("\n[PERF] %.2f s | %llu frames | %.1f FPS | %.2f ms/frame\n",
                        reportSeconds, static_cast<unsigned long long>(bench.frames),
                        n * invSeconds, bench.frame.average(bench.frames));
            std::printf("  CPU input/update: %.2f ms | GL submit: %.2f ms | glGetError: %.2f ms | swap/wait: %.2f ms\n",
                        bench.input.average(bench.frames), bench.draw.average(bench.frames),
                        bench.glcheck.average(bench.frames), bench.swap.average(bench.frames));
            std::printf("  swap/wait range: %.2f..%.2f ms | complete-frame range: %.2f..%.2f ms\n",
                        bench.swap.minMs, bench.swap.maxMs, bench.frame.minMs, bench.frame.maxMs);
            std::printf("  triangles: %.0f/frame (min %llu, max %llu), %.0f/sec | culling %.1f%% vs %d nominal\n",
                        bench.tris / n,
                        static_cast<unsigned long long>(bench.minTris),
                        static_cast<unsigned long long>(bench.maxTris),
                        bench.tris * invSeconds,
                        100.0 * (1.0 - (bench.tris / n) / triangles), triangles);
            std::printf("  DMA MM2S: %.2f MiB/s | %.0f bytes/frame | %llu transfers | S2MM %llu transfers\n",
                        txBytes * invSeconds / (1024.0 * 1024.0), txBytes / n,
                        static_cast<unsigned long long>(txTransfers),
                        static_cast<unsigned long long>(rxTransfers));
            if (cpuDelta >= 0.0)
                std::printf("  process CPU: %.1f%% of one core equivalent (across all threads)\n",
                            100.0 * cpuDelta * invSeconds);
            std::printf("  state: grid %d | texture %s | depth %s | crystals %d/%d | camera %.1f,%.1f\n",
                        game.grid, game.texturesEnabled ? "on" : "off",
                        game.depthEnabled ? "on" : "off", game.found, PICKUP_COUNT,
                        game.x, game.z);
            std::fflush(stdout);
            bench = BenchWindow{};
            previousCounters = counters;
            reportStart = t4;
            reportCpuStart = cpuNow;
        }
    }
    glDeleteTextures(1, &game.texture);
    const auto c = context.performanceCounters();
    const double seconds = std::chrono::duration<double>(Clock::now() - start).count();
    std::printf("%s | %llu frames, %.1f seconds, %.1f FPS | %d/%d collected\n",
                game.found == PICKUP_COUNT ? "YOU WIN" : "Stopped",
                static_cast<unsigned long long>(c.frames), seconds,
                seconds > 0 ? c.frames / seconds : 0, game.found, PICKUP_COUNT);
    return 0;
}
