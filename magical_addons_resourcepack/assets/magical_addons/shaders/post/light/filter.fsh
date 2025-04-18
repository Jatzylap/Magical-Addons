#version 150

#moj_import <magical_addons:utils.glsl>

uniform sampler2D InSampler;
uniform sampler2D InDepthSampler;
uniform float Range;

in vec2 texCoord;

out vec4 outColor;

#define FABULOUS_LIGHT

void main() {
    outColor = vec4(0.0);
    vec4 candidate = getLightMarker(vec4(texture(InSampler, texCoord)));

    if (candidate != vec4(0.0)) {
        candidate.a = 1.0;
        float depth = lineariseDepth(texture(InDepthSampler, texCoord).r);
        if (depth < Range) {
            outColor = candidate;
        }
    }
}