// SPDX-License-Identifier: GPL-2.0-only
// RasterIX / OpenGL 1.1 ARES-keyboard-controlled 3D collection demo
#include <ares/gl_context.hpp>
#include <GL/gl.h>
#include <kbd.h>

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
#include <sched.h>
#include <vector>
#include <cstddef>

namespace {
volatile std::sig_atomic_t running = 1;
void stop(int) { running = 0; }
constexpr float PI = 3.14159265358979323846f;
constexpr int WORLD_HALF = 32;
constexpr int PICKUP_COUNT = 14;
constexpr int TOWER_COUNT = 24;
constexpr int PATH_SEGMENTS = 12;
constexpr int TEX_SIZE = 64;
constexpr int MARKER_SEGMENTS = 6;
constexpr int MARKER_RAY_TRIANGLES = 6;
constexpr int MARKER_TRIANGLES = MARKER_SEGMENTS + MARKER_RAY_TRIANGLES;
constexpr int GROUND_TRIANGLES = 2;
constexpr int PATH_TRIANGLES = PATH_SEGMENTS * 2;
constexpr int TOWER_TRIANGLES = 4;
constexpr int PICKUP_TRIANGLES = 4;
constexpr float CAMERA_HEIGHT = 2.6f;
constexpr float MOVE_ACCELERATION = 21.0f;
constexpr float TURN_ACCELERATION = 210.0f;
constexpr float MAX_MOVE_INPUT = 6.0f;
constexpr float MAX_TURN_INPUT = 35.0f;
// Fog fades scenery into the sky; distant meshes are excluded CPU-side.
//constexpr float FOG_START = 13.0f;
//constexpr float FOG_END = 28.0f;
constexpr float FOG_START = 20.0f;
constexpr float FOG_END = 28.0f;
// Conservative radius adds clearance for a whole terrain cell/tower.
constexpr float CULL_DISTANCE = FOG_END + 2.0f;
constexpr float SKY_COLOR[4] = {0.28f, 0.48f, 0.75f, 1.0f};

struct Vec2 { float x, z; };
struct Pickup { float x, z, groundY; bool found = false; };
struct Tower { float x, z, h, w, groundY; };
// Interleaved client-side arrays (OpenGL ES 1.1; no VBO needed).
struct Vertex {
    float x, y, z;
    float u, v;
    float r, g, b;
    float nx, ny, nz;
};
struct TerrainCell {
    float midX, midZ, radius;
    Vertex vertices[6];
    Vertex indexed[4];
};
struct TowerMesh {
    Vertex vertices[TOWER_TRIANGLES * 3];
    Vertex indexed[5];
};
struct Game {
    float x = 0, z = 24, yaw = 0;
    float moveForward = 0, moveSide = 0, turn = 0;
    int found = 0;
    Pickup pickups[PICKUP_COUNT]{};
    Tower towers[TOWER_COUNT]{};
    GLuint texture = 0;
    int grid = 1;
    bool wantQuit = false;
    bool texturesEnabled = true;
    bool rgb565 = true;
    bool depthEnabled = true;
    bool solidTexture = false;
    bool stencilEnabled = true;
    bool lowResolution = false;
    bool lightingEnabled = false;
    bool clearColorBuffer = true;
    int trianglesSubmitted = 0;
    int preparedTriangles = 0;
    float viewSin = 0.0f;
    float viewCos = 1.0f;
    Vec2 markerDirection[MARKER_SEGMENTS + 1]{};
    std::vector<TerrainCell> terrain;
    std::vector<TerrainCell> path;
    TowerMesh towerMeshes[TOWER_COUNT]{};
    std::vector<Vertex> visibleTerrain;
    std::vector<Vertex> visiblePath;
    std::vector<Vertex> visibleTowers;
    std::vector<Vertex> indexedTerrain;
    std::vector<Vertex> indexedTowers;
    std::vector<GLushort> terrainIndices;
    std::vector<GLushort> towerIndices;
    bool useArrays = true;
    bool useElements = false;
    bool keys[KEY_MAX + 1]{};
};

float terrainHeight(float x, float z) {
    (void)x;
    (void)z;
    return 0.0f;
}

void setFaceNormal(Vertex& a, Vertex& b, Vertex& c) {
    const float ux = b.x - a.x, uy = b.y - a.y, uz = b.z - a.z;
    const float vx = c.x - a.x, vy = c.y - a.y, vz = c.z - a.z;
    float nx = uy * vz - uz * vy;
    float ny = uz * vx - ux * vz;
    float nz = ux * vy - uy * vx;
    const float lengthSquared = nx * nx + ny * ny + nz * nz;
    if (lengthSquared > 0.0f) {
        const float inverseLength = 1.0f / std::sqrt(lengthSquared);
        nx *= inverseLength;
        ny *= inverseLength;
        nz *= inverseLength;
    }
    a.nx = b.nx = c.nx = nx;
    a.ny = b.ny = c.ny = ny;
    a.nz = b.nz = c.nz = nz;
}

void initWorld(Game& game) {
    for (int i = 0; i < PICKUP_COUNT; ++i) {
        game.pickups[i].x = 11.0f * std::sin(i * 2.17f);
        game.pickups[i].z = 18.0f - i * 3.2f;
        game.pickups[i].groundY = terrainHeight(game.pickups[i].x, game.pickups[i].z);
    }
    for (int i = 0; i < TOWER_COUNT; ++i) {
        const int ring = i / 12;
        const int slot = i % 12;
        const float angle = (2.0f * PI * slot) / 12.0f + ring * 0.18f;
        const float radius = ring == 0 ? 13.5f : 25.5f;
        const float x = std::cos(angle) * radius;
        const float z = std::sin(angle) * radius;
        game.towers[i] = {x, z, 3.5f + float((i * 5) % 7) * 0.75f,
                          0.9f + float(i % 3) * 0.22f, 0.0f};
    }
    for (int i = 0; i <= MARKER_SEGMENTS; ++i) {
        const float angle = (2.0f * PI * i) / MARKER_SEGMENTS;
        game.markerDirection[i] = {std::cos(angle), std::sin(angle)};
    }

    // One flat ground quad replaces the old tessellated height field.
    game.terrain.resize(static_cast<size_t>(game.grid) * game.grid);
    game.visibleTerrain.reserve(static_cast<size_t>(game.grid) * game.grid * 6);
    game.path.resize(PATH_SEGMENTS);
    game.visiblePath.reserve(PATH_SEGMENTS * 6);
    game.visibleTowers.reserve(TOWER_COUNT * TOWER_TRIANGLES * 3);
    game.indexedTerrain.reserve(static_cast<size_t>(game.grid) * game.grid * 4);
    game.terrainIndices.reserve(static_cast<size_t>(game.grid) * game.grid * 6);
    game.indexedTowers.reserve(TOWER_COUNT * 5);
    game.towerIndices.reserve(TOWER_COUNT * TOWER_TRIANGLES * 3);
    const float step = (2.0f * WORLD_HALF) / game.grid;
    for (int iz = 0; iz < game.grid; ++iz) {
        for (int ix = 0; ix < game.grid; ++ix) {
            const float x0 = -WORLD_HALF + ix * step;
            const float x1 = x0 + step;
            const float z0 = -WORLD_HALF + iz * step;
            const float z1 = z0 + step;
            const float h00 = terrainHeight(x0, z0);
            const float h01 = terrainHeight(x0, z1);
            const float h11 = terrainHeight(x1, z1);
            const float h10 = terrainHeight(x1, z0);
            TerrainCell& cell = game.terrain[static_cast<size_t>(iz) * game.grid + ix];
            cell.midX = (x0 + x1) * 0.5f;
            cell.midZ = (z0 + z1) * 0.5f;
            cell.radius = step * 0.8f;
            auto v = [](float x,float y,float z) -> Vertex {
                return {x,y,z,x*.22f,z*.22f,.85f,.96f,.75f, 0,1,0};
            };
            cell.vertices[0] = v(x0,h00,z0);
            cell.vertices[1] = v(x0,h01,z1);
            cell.vertices[2] = v(x1,h11,z1);
            cell.vertices[3] = v(x0,h00,z0);
            cell.vertices[4] = v(x1,h11,z1);
            cell.vertices[5] = v(x1,h10,z0);
            cell.indexed[0] = cell.vertices[0];
            cell.indexed[1] = cell.vertices[1];
            cell.indexed[2] = cell.vertices[2];
            cell.indexed[3] = cell.vertices[5];
        }
    }

    // A narrow luminous path gives the flat world a strong visual landmark.
    const float pathStep = (2.0f * WORLD_HALF) / PATH_SEGMENTS;
    constexpr float pathHalfWidth = 0.85f;
    for (int i = 0; i < PATH_SEGMENTS; ++i) {
        const float z0 = -WORLD_HALF + i * pathStep;
        const float z1 = z0 + pathStep;
        const float x0 = 5.5f * std::sin(z0 * 0.11f);
        const float x1 = 5.5f * std::sin(z1 * 0.11f);
        TerrainCell& segment = game.path[i];
        segment.midX = (x0 + x1) * 0.5f;
        segment.midZ = (z0 + z1) * 0.5f;
        segment.radius = pathStep;
        const Vertex a = {x0-pathHalfWidth,.025f,z0, 0,0, .08f,.72f,.78f, 0,1,0};
        const Vertex b = {x0+pathHalfWidth,.025f,z0, 1,0, .08f,.72f,.78f, 0,1,0};
        const Vertex c = {x1+pathHalfWidth,.025f,z1, 1,1, .16f,.95f,.84f, 0,1,0};
        const Vertex d = {x1-pathHalfWidth,.025f,z1, 0,1, .16f,.95f,.84f, 0,1,0};
        segment.vertices[0] = a; segment.vertices[1] = d; segment.vertices[2] = c;
        segment.vertices[3] = a; segment.vertices[4] = c; segment.vertices[5] = b;
    }

    // Open square pyramids read as leaning crystal spires and need only four
    // triangles each. Their omitted bottom face is hidden by the ground.
    static const float colors[4][3] = {
        {.95f,.32f,.24f}, {.28f,.82f,1.0f}, {.86f,.34f,.96f}, {.96f,.78f,.20f}
    };
    for (int i = 0; i < TOWER_COUNT; ++i) {
        const Tower& tower = game.towers[i];
        TowerMesh& mesh = game.towerMeshes[i];
        const float* color = colors[i % 4];
        const float leanX = (float(i % 3) - 1.0f) * tower.w * 0.38f;
        const float leanZ = (float((i / 3) % 3) - 1.0f) * tower.w * 0.38f;
        const Vertex base[4] = {
            {tower.x-tower.w,0,tower.z-tower.w, 0,0, color[0]*.55f,color[1]*.55f,color[2]*.55f, 0,0,0},
            {tower.x+tower.w,0,tower.z-tower.w, 1,0, color[0]*.65f,color[1]*.65f,color[2]*.65f, 0,0,0},
            {tower.x+tower.w,0,tower.z+tower.w, 1,1, color[0]*.72f,color[1]*.72f,color[2]*.72f, 0,0,0},
            {tower.x-tower.w,0,tower.z+tower.w, 0,1, color[0]*.60f,color[1]*.60f,color[2]*.60f, 0,0,0}
        };
        const Vertex apex = {tower.x+leanX,tower.h,tower.z+leanZ,
                             .5f,1, color[0],color[1],color[2], 0,0,0};
        for (int side = 0; side < 4; ++side) {
            const int next = (side + 1) & 3;
            mesh.vertices[side*3 + 0] = base[side];
            mesh.vertices[side*3 + 1] = apex;
            mesh.vertices[side*3 + 2] = base[next];
            setFaceNormal(mesh.vertices[side*3 + 0], mesh.vertices[side*3 + 1],
                          mesh.vertices[side*3 + 2]);
        }
        for (int corner = 0; corner < 4; ++corner)
            mesh.indexed[corner] = base[corner];
        mesh.indexed[4] = apex;
    }
}

// Procedural circuit-grass texture, uploaded once. Fine grid lines, diagonal
// traces and gold nodes add detail without adding geometry or per-frame DMA.
void createTexture(Game& game) {
    unsigned char pixels[TEX_SIZE * TEX_SIZE * 4];
    uint16_t pixels565[TEX_SIZE * TEX_SIZE];
    for (int y = 0; y < TEX_SIZE; ++y) {
        for (int x = 0; x < TEX_SIZE; ++x) {
            const int p = (y * TEX_SIZE + x) * 4;
            const bool checker = (((x / 8) + (y / 8)) & 1) != 0;
            const bool gridLine = (x % 16) < 2 || (y % 16) < 2;
            const bool trace = ((x + y * 2) & 31) < 2;
            const int nx = (x % 16) - 8;
            const int ny = (y % 16) - 8;
            const bool node = nx * nx + ny * ny <= 7;
            int r = checker ? 34 : 22;
            int g = checker ? 82 : 62;
            int b = checker ? 62 : 48;
            if (trace) { r = 38; g = 118; b = 96; }
            if (gridLine) { r = 54; g = 154; b = 132; }
            if (node) { r = 245; g = 190; b = 52; }
            if (game.solidTexture) r = g = b = 255;
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

// Conservative CPU-side view culling. GL_CULL_FACE removes backwards-facing
// polygons, NOT entire objects outside the screen. This avoids submitting them.
// Deliberately allow a wider field of view than the camera to avoid pop-in.
bool possiblyVisible(const Game& game, float x, float z, float radius) {
    const float dx = x - game.x, dz = z - game.z;
    const float forward = dx * game.viewSin - dz * game.viewCos;
    const float side = dx * game.viewCos + dz * game.viewSin;
    if (forward + radius < 0.1f) return false;
    // This is real distance culling, not just back-face or side-view culling.
    // Avoid calculating sqrtf for every cell/mesh.
    const float maxDist = CULL_DISTANCE + radius;
    if (dx * dx + dz * dz > maxDist * maxDist) return false;
    if (forward - radius > CULL_DISTANCE) return false;
    return std::fabs(side) <= 1.35f * std::max(forward, 0.0f) + radius + 2.0f;
}

// Each visible mesh is copied into one contiguous batch. This is an inexpensive
// memcpy-like operation, avoiding thousands of libm calls and per-object GL calls.
void drawBatch(Game& game, const std::vector<Vertex>& vertices, bool useLighting = true) {
    if (vertices.empty()) return;
    const bool submitNormals = game.lightingEnabled && useLighting;
    if (game.useArrays) {
        glEnableClientState(GL_VERTEX_ARRAY);
        glEnableClientState(GL_TEXTURE_COORD_ARRAY);
        glEnableClientState(GL_COLOR_ARRAY);
        if (submitNormals) glEnableClientState(GL_NORMAL_ARRAY);
        const char* base = reinterpret_cast<const char*>(vertices.data());
        glVertexPointer(3, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, x));
        glTexCoordPointer(2, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, u));
        glColorPointer(3, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, r));
        if (submitNormals)
            glNormalPointer(GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, nx));
        glDrawArrays(GL_TRIANGLES, 0, static_cast<GLsizei>(vertices.size()));
        if (submitNormals) glDisableClientState(GL_NORMAL_ARRAY);
        glDisableClientState(GL_COLOR_ARRAY);
        glDisableClientState(GL_TEXTURE_COORD_ARRAY);
        glDisableClientState(GL_VERTEX_ARRAY);
    } else {
        // Useful for a like-for-like benchmark or if your RasterIX build
        // does not implement client vertex arrays correctly.
        glBegin(GL_TRIANGLES);
        for (const Vertex& v : vertices) {
            glColor3f(v.r, v.g, v.b);
            glTexCoord2f(v.u, v.v);
            if (submitNormals) glNormal3f(v.nx, v.ny, v.nz);
            glVertex3f(v.x, v.y, v.z);
        }
        glEnd();
    }
}

// GL_UNSIGNED_SHORT indices are supported by OpenGL ES 1.1.
void drawIndexedBatch(Game& game, const std::vector<Vertex>& vertices,
                      const std::vector<GLushort>& indices) {
    if (indices.empty()) return;
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    if (game.lightingEnabled) glEnableClientState(GL_NORMAL_ARRAY);
    const char* base = reinterpret_cast<const char*>(vertices.data());
    glVertexPointer(3, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, x));
    glTexCoordPointer(2, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, u));
    glColorPointer(3, GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, r));
    if (game.lightingEnabled)
        glNormalPointer(GL_FLOAT, sizeof(Vertex), base + offsetof(Vertex, nx));
    glDrawElements(GL_TRIANGLES, static_cast<GLsizei>(indices.size()),
                   GL_UNSIGNED_SHORT, indices.data());
    if (game.lightingEnabled) glDisableClientState(GL_NORMAL_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisableClientState(GL_VERTEX_ARRAY);
}

void prepareTerrain(Game& game) {
    if (game.useElements) {
        game.indexedTerrain.clear();
        game.terrainIndices.clear();
        for (const TerrainCell& cell : game.terrain) {
            if (!possiblyVisible(game, cell.midX, cell.midZ, cell.radius)) continue;
            const GLushort base = static_cast<GLushort>(game.indexedTerrain.size());
            game.indexedTerrain.insert(game.indexedTerrain.end(), cell.indexed, cell.indexed + 4);
            const GLushort local[6] = {0, 1, 2, 0, 2, 3};
            for (GLushort i : local) game.terrainIndices.push_back(static_cast<GLushort>(base + i));
            game.preparedTriangles += 2;
        }
    } else {
        game.visibleTerrain.clear();
        for (const TerrainCell& cell : game.terrain) {
            if (!possiblyVisible(game, cell.midX, cell.midZ, cell.radius)) continue;
            game.visibleTerrain.insert(game.visibleTerrain.end(), cell.vertices, cell.vertices + 6);
            game.preparedTriangles += 2;
        }
    }
}

void preparePath(Game& game) {
    game.visiblePath.clear();
    for (const TerrainCell& segment : game.path) {
        if (!possiblyVisible(game, segment.midX, segment.midZ, segment.radius)) continue;
        game.visiblePath.insert(game.visiblePath.end(), segment.vertices, segment.vertices + 6);
        game.preparedTriangles += 2;
    }
}

void prepareTowers(Game& game) {
    if (game.useElements) {
        game.indexedTowers.clear();
        game.towerIndices.clear();
        for (int i = 0; i < TOWER_COUNT; ++i) {
            const Tower& tower = game.towers[i];
            if (!possiblyVisible(game, tower.x, tower.z, tower.w * 1.5f + 2.0f)) continue;
            const TowerMesh& mesh = game.towerMeshes[i];
            const GLushort base = static_cast<GLushort>(game.indexedTowers.size());
            game.indexedTowers.insert(game.indexedTowers.end(), mesh.indexed, mesh.indexed + 5);
            const GLushort indices[12] = {0,4,1, 1,4,2, 2,4,3, 3,4,0};
            for (GLushort j : indices)
                game.towerIndices.push_back(static_cast<GLushort>(base + j));
            game.preparedTriangles += TOWER_TRIANGLES;
        }
    } else {
        game.visibleTowers.clear();
        for (int i = 0; i < TOWER_COUNT; ++i) {
            const Tower& tower = game.towers[i];
            if (!possiblyVisible(game, tower.x, tower.z, tower.w * 1.5f + 2.0f)) continue;
            const TowerMesh& mesh = game.towerMeshes[i];
            game.visibleTowers.insert(game.visibleTowers.end(), mesh.vertices,
                                      mesh.vertices + TOWER_TRIANGLES * 3);
            game.preparedTriangles += TOWER_TRIANGLES;
        }
    }
}

void prepareFrame(Game& game) {
    const float viewAngle = game.yaw * PI / 180.0f;
    game.viewSin = std::sin(viewAngle);
    game.viewCos = std::cos(viewAngle);
    game.preparedTriangles = 0;
    prepareTerrain(game);
    preparePath(game);
    prepareTowers(game);
}

void drawTerrain(Game& game) {
    if (game.useElements)
        drawIndexedBatch(game, game.indexedTerrain, game.terrainIndices);
    else
        drawBatch(game, game.visibleTerrain);
}

void drawTowers(Game& game) {
    if (game.useElements)
        drawIndexedBatch(game, game.indexedTowers, game.towerIndices);
    else
        drawBatch(game, game.visibleTowers);
}

void drawPath(Game& game) {
    drawBatch(game, game.visiblePath, false);
}

// A rotating tetrahedral crystal: four triangles instead of eight.
void drawPickup(const Pickup& p, float t) {
    const float y = p.groundY + 2.1f;
    glDisable(GL_TEXTURE_2D);
    glPushMatrix();
    glTranslatef(p.x, y + .20f * std::sin(t * 2.3f), p.z);
    glRotatef(t * 100.0f, 0, 1, 0);
    static const float v[4][3] = {
        {0,.82f,0}, {-.58f,-.48f,-.38f}, {.58f,-.48f,-.38f}, {0,-.48f,.62f}
    };
    static const int faces[4][3] = {{0,2,1},{0,3,2},{0,1,3},{1,2,3}};
    static const float normals[4][3] = {
        {0,.280567f,-.9598344f}, {.8412824f,.2327117f,.4879438f},
        {-.8412824f,.2327117f,.4879438f}, {0,-1,0}
    };
    glBegin(GL_TRIANGLES);
    for (int face = 0; face < 4; ++face) {
        glNormal3fv(normals[face]);
        for (int corner = 0; corner < 3; ++corner) {
            const int i = faces[face][corner];
            glColor3f(.08f + .08f * corner, .48f + .2f * corner, 1.0f);
            glVertex3f(v[i][0], v[i][1], v[i][2]);
        }
    }
    glEnd();
    glPopMatrix();
}

// Stencil demo: glowing rotating runes beneath uncollected crystals.
// Pass 1 writes a circular mask into stencil without changing color or depth.
// Pass 2 draws three long bars, which stencil clips to that circular mask.
// No shaders, mipmaps or blending required; works with OpenGL ES 1.1.
void markerCircle(const Game& game, const Pickup& p, float time) {
    const float radius = 1.25f + 0.12f * std::sin(time * 2.0f);
    const float centerY = p.groundY + 0.12f;
    float x[MARKER_SEGMENTS + 1], y[MARKER_SEGMENTS + 1], z[MARKER_SEGMENTS + 1];
    for (int i = 0; i <= MARKER_SEGMENTS; ++i) {
        x[i] = p.x + radius * game.markerDirection[i].x;
        z[i] = p.z + radius * game.markerDirection[i].z;
        y[i] = 0.12f;
    }
    glBegin(GL_TRIANGLES);
    for (int i = 0; i < MARKER_SEGMENTS; ++i) {
        glVertex3f(p.x, centerY, p.z);
        glVertex3f(x[i], y[i], z[i]);
        glVertex3f(x[i + 1], y[i + 1], z[i + 1]);
    }
    glEnd();
}

// Each bar extends beyond the disc. Three rotating bars form six rays, while
// the stencil mask keeps their outside edges perfectly circular.
void markerCross(const Pickup& p, float time) {
    const float halfLength = 2.0f;
    const float halfWidth = 0.10f + 0.035f * (1.0f + std::sin(time * 3.0f));
    const float spin = time * 0.9f + p.x * 0.07f + p.z * 0.03f;
    const float spinSin = std::sin(spin);
    const float spinCos = std::cos(spin);
    const float pulse = 0.5f + 0.5f * std::sin(time * 2.2f + p.x * 0.1f);
    static const float offsetCos[3] = {1.0f, 0.5f, -0.5f};
    static const float offsetSin[3] = {0.0f, 0.8660254f, 0.8660254f};
    static const int idx[6] = {0, 1, 2, 0, 2, 3};
    glBegin(GL_TRIANGLES);
    for (int axis = 0; axis < 3; ++axis) {
        const float c = spinCos * offsetCos[axis] - spinSin * offsetSin[axis];
        const float s = spinSin * offsetCos[axis] + spinCos * offsetSin[axis];
        const float localX[4] = {-halfLength, halfLength, halfLength, -halfLength};
        const float localZ[4] = {-halfWidth, -halfWidth, halfWidth, halfWidth};
        float x[4], z[4];
        for (int corner = 0; corner < 4; ++corner) {
            x[corner] = p.x + localX[corner] * c - localZ[corner] * s;
            z[corner] = p.z + localX[corner] * s + localZ[corner] * c;
        }
        glColor3f(0.08f + axis * 0.07f, 0.72f + pulse * 0.25f,
                  1.0f - axis * 0.08f);
        for (int j = 0; j < 6; ++j) {
            const int k = idx[j];
            glVertex3f(x[k], 0.15f, z[k]);
        }
    }
    glEnd();
}

void drawStencilMarkers(Game& game, float time) {
    if (!game.stencilEnabled) return;
    if (game.lightingEnabled) glDisable(GL_LIGHTING);
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
            markerCircle(game, p, time);
            game.trianglesSubmitted += MARKER_SEGMENTS;
        }

    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glStencilMask(0x00);
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    for (const Pickup& p : game.pickups)
        if (!p.found && possiblyVisible(game, p.x, p.z, 2.0f)) {
            markerCross(p, time);
            game.trianglesSubmitted += MARKER_RAY_TRIANGLES;
        }

    glStencilMask(0xFF);
    glDisable(GL_STENCIL_TEST);
    glDepthMask(GL_TRUE);
    glEnable(GL_CULL_FACE);
    glEnable(GL_FOG);
    if (game.lightingEnabled) glEnable(GL_LIGHTING);
}

void updateAtmosphere(float time) {
    const float cycle = 0.5f + 0.5f * std::sin(time * 0.12f);
    const GLfloat sky[4] = {
        0.16f + cycle * 0.12f,
        0.25f + cycle * 0.23f,
        0.48f + cycle * 0.27f,
        1.0f
    };
    glClearColor(sky[0], sky[1], sky[2], sky[3]);
    glFogfv(GL_FOG_COLOR, sky);
}

void drawFrame(Game& game, float t) {
    game.trianglesSubmitted = game.preparedTriangles;
    updateAtmosphere(t);
    GLbitfield clearMask = GL_DEPTH_BUFFER_BIT;
    if (game.clearColorBuffer) clearMask |= GL_COLOR_BUFFER_BIT;
    if (game.stencilEnabled) clearMask |= GL_STENCIL_BUFFER_BIT;
    glClear(clearMask);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    // Positive yaw is a right turn, matching movement in update().
    glRotatef(game.yaw, 0, 1, 0);
    glTranslatef(-game.x, -(CAMERA_HEIGHT + terrainHeight(game.x, game.z)), -game.z);
    if (game.lightingEnabled) {
        // Directional world-space sunlight; w=0 avoids attenuation calculations.
        const GLfloat sunlight[4] = {-.45f, 1.0f, .25f, 0.0f};
        glLightfv(GL_LIGHT0, GL_POSITION, sunlight);
    }
    if (game.texturesEnabled) {
        glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, game.texture);
    } else {
        glDisable(GL_TEXTURE_2D);
    }
    drawTerrain(game);
    glDisable(GL_TEXTURE_2D);
    if (game.lightingEnabled) glDisable(GL_LIGHTING);
    drawPath(game);
    if (game.lightingEnabled) glEnable(GL_LIGHTING);
    drawTowers(game);
    drawStencilMarkers(game, t);
    for (const Pickup& p : game.pickups) {
        if (!p.found && possiblyVisible(game, p.x, p.z, 1.5f)) {
            game.trianglesSubmitted += PICKUP_TRIANGLES;
            drawPickup(p, t);
        }
    }
}

void handleInput(Game& game) {
    keyboard_event_t event{};
    int result;
    while ((result = keyboard_get_event(&event)) == 1) {
        if (event.key > KEY_MAX)
            continue;

        // Movement depends only on down/up state. EV_KEY autorepeat merely
        // confirms that the key remains down and never adds another impulse.
        if (event.value == 0)
            game.keys[event.key] = false;
        else if (event.value == 1 || event.value == 2)
            game.keys[event.key] = true;

        if (event.value == 1 && (event.key == KEY_Q || event.key == KEY_ESC))
            game.wantQuit = true;
    }
    if (result < 0) {
        std::fprintf(stderr, "ERROR: ARES keyboard input failed\n");
        game.wantQuit = true;
    }
}

void update(Game& game, float dt) {
    const float forwardAxis =
        ((game.keys[KEY_W] || game.keys[KEY_UP]) ? 1.0f : 0.0f) -
        ((game.keys[KEY_S] || game.keys[KEY_DOWN]) ? 1.0f : 0.0f);
    const float sideAxis = (game.keys[KEY_L] ? 1.0f : 0.0f) -
                           (game.keys[KEY_J] ? 1.0f : 0.0f);
    const float turnAxis =
        ((game.keys[KEY_D] || game.keys[KEY_RIGHT]) ? 1.0f : 0.0f) -
        ((game.keys[KEY_A] || game.keys[KEY_LEFT]) ? 1.0f : 0.0f);

    // Apply acceleration per second, independent of keyboard repeat rate and
    // rendering frame rate. Existing damping gives smooth starts and stops.
    game.moveForward = std::max(-MAX_MOVE_INPUT, std::min(MAX_MOVE_INPUT,
        game.moveForward + forwardAxis * MOVE_ACCELERATION * dt));
    game.moveSide = std::max(-MAX_MOVE_INPUT, std::min(MAX_MOVE_INPUT,
        game.moveSide + sideAxis * MOVE_ACCELERATION * dt));
    game.turn = std::max(-MAX_TURN_INPUT, std::min(MAX_TURN_INPUT,
        game.turn + turnAxis * TURN_ACCELERATION * dt));

    const float radians = game.yaw * PI / 180.0f;
    const float s = std::sin(radians), c = std::cos(radians);
    game.x += (s * game.moveForward + c * game.moveSide) * dt * 5.0f;
    game.z += (-c * game.moveForward + s * game.moveSide) * dt * 5.0f;
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

uint64_t parseOptions(int argc, char** argv, Game& game, int& cpu) {
    uint64_t frames = 0;
    for (int i = 1; i < argc; ++i) {
        if (std::strcmp(argv[i], "--frames") == 0 && i + 1 < argc) {
            char* end = nullptr;
            unsigned long long x = std::strtoull(argv[++i], &end, 10);
            if (!x || !end || *end) { std::fprintf(stderr, "Bad --frames\n"); std::exit(1); }
            frames = static_cast<uint64_t>(x);
        } else if (std::strcmp(argv[i], "--cpu") == 0 && i + 1 < argc) {
            char* end = nullptr;
            long x = std::strtol(argv[++i], &end, 10);
            if (!end || *end || x < 0 || x >= CPU_SETSIZE) {
                std::fprintf(stderr, "Bad --cpu\n"); std::exit(1);
            }
            cpu = static_cast<int>(x);
        } else if (std::strcmp(argv[i], "--elements") == 0) {
            game.useElements = true;
            game.useArrays = true;
        } else if (std::strcmp(argv[i], "--immediate") == 0) {
            game.useElements = false;
            game.useArrays = false;
        } else if (std::strcmp(argv[i], "--rgba") == 0) {
            game.rgb565 = false;
        } else if (std::strcmp(argv[i], "--no-texture") == 0) {
            game.texturesEnabled = false;
        } else if (std::strcmp(argv[i], "--no-depth") == 0) {
            game.depthEnabled = false;
        } else if (std::strcmp(argv[i], "--no-stencil") == 0) {
            game.stencilEnabled = false;
        } else if (std::strcmp(argv[i], "--low-res") == 0) {
            game.lowResolution = true;
        } else if (std::strcmp(argv[i], "--solid-texture") == 0) {
            game.solidTexture = true;
        } else if (std::strcmp(argv[i], "--lighting") == 0) {
            game.lightingEnabled = true;
        } else if (std::strcmp(argv[i], "--no-clear") == 0) {
            game.clearColorBuffer = false;
        } else {
            std::fprintf(stderr, "Usage: %s [--frames COUNT] [--cpu CORE] [--low-res] [--lighting] [--no-clear] [--no-texture] [--no-depth] [--solid-texture] [--rgba] [--no-stencil] [--immediate] [--elements]\n", argv[0]);
            std::exit(1);
        }
    }
    return frames;
}
} // namespace

int main(int argc, char** argv) {
    Game game;
    int cpu = -1;
    const uint64_t frameLimit = parseOptions(argc, argv, game, cpu);
    // The spires need a separate normal for each face. Shared indexed corner
    // vertices cannot represent those four normals, so lighting uses arrays.
    if (game.lightingEnabled && game.useElements) {
        std::puts("Lighting: --elements replaced by glDrawArrays for correct flat face normals.");
        game.useElements = false;
    }
    if (cpu >= 0) {
        cpu_set_t affinity;
        CPU_ZERO(&affinity);
        CPU_SET(cpu, &affinity);
        if (sched_setaffinity(0, sizeof(affinity), &affinity) != 0) {
            std::fprintf(stderr, "Could not select CPU %d: %s\n", cpu, std::strerror(errno));
            return 1;
        }
        std::printf("CPU affinity: core %d (inherited by RasterIX threads)\n", cpu);
    }
    std::signal(SIGINT, stop);
    std::signal(SIGTERM, stop);
    if (keyboard_init() != 0)
        return 1;
    ares::GLContext context;
    if (!context) return 1;
    context.setVSync(false);
    const int renderWidth = game.lowResolution ? ares::GLContext::width / 2
                                               : ares::GLContext::width;
    const int renderHeight = game.lowResolution ? ares::GLContext::height / 2
                                                : ares::GLContext::height;
    const int viewportX = (ares::GLContext::width - renderWidth) / 2;
    const int viewportY = (ares::GLContext::height - renderHeight) / 2;
    glViewport(viewportX, viewportY, renderWidth, renderHeight);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    const float aspect = float(renderWidth) / float(renderHeight);
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
    if (game.lightingEnabled) {
        const GLfloat globalAmbient[4] = {.22f, .24f, .28f, 1.0f};
        const GLfloat lightAmbient[4] = {.18f, .20f, .24f, 1.0f};
        const GLfloat lightDiffuse[4] = {.82f, .78f, .68f, 1.0f};
        const GLfloat noSpecular[4] = {0, 0, 0, 1};
        glLightModelfv(GL_LIGHT_MODEL_AMBIENT, globalAmbient);
        glLightfv(GL_LIGHT0, GL_AMBIENT, lightAmbient);
        glLightfv(GL_LIGHT0, GL_DIFFUSE, lightDiffuse);
        glLightfv(GL_LIGHT0, GL_SPECULAR, noSpecular);
        glEnable(GL_LIGHT0);
        glEnable(GL_COLOR_MATERIAL);
        glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE);
        glDisable(GL_NORMALIZE);
        glEnable(GL_LIGHTING);
    } else {
        glDisable(GL_LIGHTING);
    }
    // OpenGL ES 1.1 fixed-function fog: no shader or mipmap required.
    // Fog color matches the clear color so distant surfaces disappear smoothly.
    glFogfv(GL_FOG_COLOR, SKY_COLOR);
    glFogi(GL_FOG_MODE, GL_LINEAR);
    glFogf(GL_FOG_START, FOG_START);
    glFogf(GL_FOG_END, FOG_END);
    glEnable(GL_FOG);
    glShadeModel(GL_SMOOTH);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE,
              game.lightingEnabled ? GL_MODULATE : GL_REPLACE);
    initWorld(game);
    createTexture(game);
    const int triangles = GROUND_TRIANGLES + PATH_TRIANGLES +
                          TOWER_COUNT * TOWER_TRIANGLES +
                          PICKUP_COUNT * (PICKUP_TRIANGLES +
                              (game.stencilEnabled ? MARKER_TRIANGLES : 0));
    std::printf("GL_VENDOR: %s\nGL_RENDERER: %s\nGL_VERSION: %s\n",
                glGetString(GL_VENDOR), glGetString(GL_RENDERER), glGetString(GL_VERSION));
    std::printf("RasterIX Crystal Flight | W/S: forward/back | A/D: turn | J/L: strafe | Q: quit\n");
    std::printf("Collect %d crystals. Entire world: %d triangles (%d ground/path, %d spires, %d crystals/markers); view culling keeps each frame much lower.\n",
                PICKUP_COUNT, triangles, GROUND_TRIANGLES + PATH_TRIANGLES,
                TOWER_COUNT * TOWER_TRIANGLES,
                PICKUP_COUNT * (PICKUP_TRIANGLES +
                    (game.stencilEnabled ? MARKER_TRIANGLES : 0)));
    std::printf("Input: ARES MSX Keyboard via Linux event device; press or hold movement keys.\n");
    std::printf("Static mesh cache: ON | geometry: %s\n",
                game.useElements ? "glDrawElements" : (game.useArrays ? "glDrawArrays" : "immediate mode"));
    GLint stencilBits = 0;
    glGetIntegerv(GL_STENCIL_BITS, &stencilBits);
    std::printf("Stencil crystal ground markers: %s | GL_STENCIL_BITS: %d\n",
                game.stencilEnabled ? "ON" : "OFF", stencilBits);
    if (game.stencilEnabled && stencilBits == 0)
        std::puts("WARNING: No stencil bits reported; enable stencil in RasterIX FPGA config if the markers do not appear.");
    std::printf("Fog: linear %.1f..%.1f units | CPU distance cull: %.1f units | scene viewport: %dx%d%s\n",
                FOG_START, FOG_END, CULL_DISTANCE,
                renderWidth, renderHeight,
                game.lowResolution ? " centered in 512x384" : "");
    std::printf("Textures: %s (%s, %s) | depth: %s | lighting: %s | color clear: %s | backface + CPU visibility culling | no mipmaps\n",
                game.texturesEnabled ? "ON" : "OFF", game.rgb565 ? "RGB565" : "RGBA8888",
                game.solidTexture ? "solid white" : "checker", game.depthEnabled ? "ON" : "OFF",
                game.lightingEnabled ? "one directional ambient/diffuse light" : "OFF",
                game.clearColorBuffer ? "ON" : "OFF (persistent trails)");
    std::fflush(stdout);
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
        prepareFrame(game);
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
            std::printf("  CPU input/prep: %.2f ms | GL submit: %.2f ms | glGetError: %.2f ms | swap/wait: %.2f ms\n",
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
            std::printf("  state: flat low-poly world | texture %s | depth %s | lighting %s | color clear %s | crystals %d/%d | camera %.1f,%.1f\n",
                        game.texturesEnabled ? "on" : "off",
                        game.depthEnabled ? "on" : "off",
                        game.lightingEnabled ? "on" : "off",
                        game.clearColorBuffer ? "on" : "off", game.found, PICKUP_COUNT,
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
