// SPDX-License-Identifier: GPL-2.0-only
// RasterIX / OpenGL 1.1 terminal-controlled 3D collection demo (POSIX/Linux)
#include <ares/gl_context.hpp>
#include <GL/gl.h>

#include <algorithm>
#include <chrono>
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
    if (forward - radius > 55.0f) return false;
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

void drawFrame(Game& game, float t) {
    game.trianglesSubmitted = 0;
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
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
        } else if (std::strcmp(argv[i], "--solid-texture") == 0) {
            game.solidTexture = true;
        } else {
            std::fprintf(stderr, "Usage: %s [--grid 8..128] [--frames COUNT] [--no-texture] [--no-depth] [--solid-texture] [--rgba]\n", argv[0]);
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
    glClearColor(.28f, .48f, .75f, 1);
    glClearDepth(1);
    if (game.depthEnabled) glEnable(GL_DEPTH_TEST);
    else glDisable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glDepthMask(GL_TRUE);
    glFrontFace(GL_CCW);
    glCullFace(GL_BACK);
    glEnable(GL_CULL_FACE);
    glDisable(GL_STENCIL_TEST);
    glDisable(GL_BLEND);
    glDisable(GL_LIGHTING);
    glDisable(GL_FOG);
    glShadeModel(GL_SMOOTH);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    initWorld(game);
    createTexture(game);
    const int triangles = game.grid * game.grid * 2 + TOWER_COUNT * 12 + PICKUP_COUNT * 8;
    std::printf("GL_VENDOR: %s\nGL_RENDERER: %s\nGL_VERSION: %s\n",
                glGetString(GL_VENDOR), glGetString(GL_RENDERER), glGetString(GL_VERSION));
    std::printf("RasterIX Crystal Flight | W/S: forward/back | A/D: turn | J/L: strafe | Q: quit\n");
    std::printf("Collect %d crystals. Nominal scene: %d triangles (%d terrain, %d towers, %d crystals).\n",
                PICKUP_COUNT, triangles, game.grid * game.grid * 2,
                TOWER_COUNT * 12, PICKUP_COUNT * 8);
    std::printf("Terminal key autorepeat controls movement; input must come from a TTY.\n");
    std::printf("Textures: %s (%s, %s) | depth: %s | backface + CPU visibility culling | no mipmaps\n",
                game.texturesEnabled ? "ON" : "OFF", game.rgb565 ? "RGB565" : "RGBA8888",
                game.solidTexture ? "solid white" : "checker", game.depthEnabled ? "ON" : "OFF");
    std::fflush(stdout);
    Terminal terminal;
    if (!terminal.active) std::fprintf(stderr, "Warning: stdin is not a TTY, controls disabled.\n");
    using Clock = std::chrono::steady_clock;
    const auto start = Clock::now();
    auto previous = start, report = start;
    uint64_t reportFrames = 0;
    while (running && !game.wantQuit &&
           (!frameLimit || context.performanceCounters().frames < frameLimit)) {
        const auto now = Clock::now();
        float dt = std::chrono::duration<float>(now - previous).count();
        previous = now;
        dt = std::max(.0f, std::min(.05f, dt));
        handleInput(game);
        update(game, dt);
        const float seconds = std::chrono::duration<float>(now - start).count();
        drawFrame(game, seconds);
        const GLenum err = glGetError();
        if (err != GL_NO_ERROR) {
            std::fprintf(stderr, "OpenGL error 0x%04x\n", err);
            glDeleteTextures(1, &game.texture);
            return 1;
        }
        context.swapBuffers();
        ++reportFrames;
        const auto after = Clock::now();
        const double elapsed = std::chrono::duration<double>(after - report).count();
        if (elapsed >= 2.0) {
            const auto c = context.performanceCounters();
            std::printf("FPS %5.1f | crystals %2d/%d | submitted triangles %d/%d | MM2S %llu bytes | position %.1f,%.1f\n",
                        reportFrames / elapsed, game.found, PICKUP_COUNT, game.trianglesSubmitted, triangles,
                        static_cast<unsigned long long>(c.mm2sBytes), game.x, game.z);
            std::fflush(stdout);
            reportFrames = 0;
            report = after;
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
