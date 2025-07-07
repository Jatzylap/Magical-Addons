#version 150

// Magical Addons
// https://github.com/Jatzylap/Magical-Addons

#define BIG 1000000
#define FIXEDPOINT 1000.0
#define DSCALE 10.0

#define PI 3.1415926535897932
#define PHI 1.61803398875

#define NEAR 0.05
#define FAR 1024.0

#define LIGHTR 8.0
#define SPREAD 3.0
#define BOOST 10.0
#define CUTOFF 0.02

#define ALPHACUTOFF (21.5 / 255.0)
#define LIGHTALPHA (24.0 / 255.0)
#define LIGHTDEPTH 0.025

vec2 setCoords(vec2 shift, float scalar, int vertexID, vec2 resolution) {
    vec2 corners[4] = vec2[4](vec2(0.0, 0.0),
                              vec2(0.0, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, 0.0));
    vec2 coords = (corners[vertexID] * scalar) + shift;
    return coords;
}

bool isGUI(mat4 ProjMat) { 
    return abs(ProjMat[2][3]) <= 1.0 / BIG;
}

bool isHand(float fogs, float foge) { // also includes panorama
    return fogs >= foge;
}

float LinearizeDepth(float depth) {
    float z = depth * 2.0 - 1.0;
    return 2.0 * (NEAR * FAR) / (FAR + NEAR - z * (FAR - NEAR));    
}

float luminance(vec3 rgb) {
    return 0.2126 * rgb.r + 0.7152 * rgb.g + 0.0722 * rgb.b;
}