#version 150

// Magical Addons
// https://github.com/Jatzylap/magical_addons

#define PI 3.1415926535897932
#define PHI 1.61803398875
#define NEAR 0.05
#define FAR 1024.0
#define DSCALE 10.0

bool isColourMatch(vec3 colour) {
    return (colour == vec3(1.0, 1.0, 1.0)  || // White
            colour == vec3(1.0, 0.0, 0.0)  || // Red
            colour == vec3(1.0, 1.0, 0.0)  || // Yellow
            colour == vec3(0.0, 1.0, 0.0)  || // Green
            colour == vec3(0.0, 1.0, 1.0)  || // Cyan
            colour == vec3(0.0, 0.0, 1.0)  || // Blue
            colour == vec3(1.0, 0.0, 1.0));   // Magenta
}

bool isLightMarker(vec4 candidate) {
    return (isColourMatch(candidate.rgb) && candidate.a * 255 == 3.0);
}

vec4 getLightMarker(vec4 candidate) {
    candidate.rgb *= 255.0 / 3.0;
    if (isColourMatch(candidate.rgb)) {
        return candidate;
    }
    return vec4(0.0);
}

float lineariseDepth(float depth) {
    float z = depth * 2.0 - 1.0;
    return (2.0 * NEAR * FAR) / (FAR + NEAR - z * (FAR - NEAR));
    #ifdef FABULOUS_LIGHT
        return (2.0 * NEAR * FAR) / (FAR + NEAR - z * (FAR - NEAR)) * DSCALE;
    #endif
}

vec2 setCoords(vec2 shift, float scalar, int vertexID, vec2 resolution) {
    vec2 corners[4] = vec2[4](vec2(0.0, 0.0),
                              vec2(0.0, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, resolution.x/resolution.y),
                              vec2(resolution.y/resolution.x, 0.0));
    vec2 coords = (corners[vertexID] * scalar) + shift;
    return coords;
}