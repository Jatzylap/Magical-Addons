#version 150

// Magical Addons
// https://github.com/Jatzylap/Magical-Addons

#define PI 3.1415926535897932
#define PHI 1.61803398875

// Unused function (sets new screen coords for input char vertices e.g. custom HUD)
vec2 setCoords(vec2 shift, float scalar, int vertexID, vec2 resolution) {
    vec2 corners[4] = vec2[4](vec2(0.0, 0.0),
                              vec2(0.0, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, 0.0));
    vec2 coords = (corners[vertexID] * scalar) + shift;
    return coords;
}