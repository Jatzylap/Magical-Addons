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
    fragColor = texture(SearchLayerSampler, texCoord);
    float width = ceil(SearchLayerSize.x / float(AGGSTEP0));
    float width2 = ceil(width / float(AGGSTEP1));
    float height = ceil(SearchLayerSize.y / float(AGGSTEP0));
    float height2 = ceil(height / float(AGGSTEP1));
    vec2 samplepos = gl_FragCoord.xy - 0.5;
    samplepos = vec2(samplepos.x - width2, samplepos.y);
    if (samplepos.x >= 2.0 * width + width2 && samplepos.x < 2.0 * width + 2.0 * width2 && samplepos.y == 0.0) {
        float tmpCounter = 0.0;
        for (int i = 0; i < int(height2); i += 1) {
            tmpCounter += float(texture(SearchLayerSampler, (vec2(samplepos.x, samplepos.y + float(i)) + 0.5) * oneTexel).b * 255.0);
        }
        tmpCounter /= 255.0;
        fragColor = vec4(vec3(tmpCounter), 1.0);
        if (Test == 1) {
            fragColor.rgb /= tmpCounter == 0.0 ? 1.0 : fragColor.r;
            fragColor.rgb += vec3(0.7, 0.0, 0.0);
        }
    }
}