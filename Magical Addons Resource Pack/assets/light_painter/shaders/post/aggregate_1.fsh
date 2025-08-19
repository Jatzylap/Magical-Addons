#version 150

#moj_import <light_painter:utils.glsl>

uniform sampler2D SearchLayerSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 SearchLayerSize;
};

layout(std140) uniform TestConfig {
    int Test;
};

in vec2 texCoord;
flat in vec2 oneTexel;

out vec4 fragColor;

void main() {
    fragColor = vec4(0.0);
    vec2 samplepos = gl_FragCoord.xy - 0.5;
    samplepos = vec2(samplepos.x * float(AGGSTEP0), samplepos.y);
    if (samplepos.x < SearchLayerSize.x) {
        float tmpCounter = 0.0;
        for (int i = 0; i < AGGSTEP0; i += 1) {
            tmpCounter += float(texture(SearchLayerSampler, (vec2(samplepos.x + float(i), samplepos.y) + 0.5) * oneTexel).a == 1.0);
        }
        tmpCounter /= 255.0;
        fragColor = vec4(vec3(tmpCounter), 1.0);
        if (Test == 1) {
            fragColor.rgb /= tmpCounter == 0.0 ? 1.0 : fragColor.r;
            fragColor.rgb += vec3(0.2, 0.0, 0.0);
        }
    }

    if (abs(gl_FragCoord.x - 1.0) < 0.01) {
        fragColor.rgb = vec3(0.0, 1.0, 0.0);
    }
}