#version 150

uniform sampler2D InSampler;
uniform vec2 InSize;
uniform float Step;

in vec2 texCoord;
flat in vec2 oneTexel;

out vec4 outColor;

void main() {
    outColor = texture(InSampler, texCoord);
    float width = ceil(InSize.x / Step);
    float height = ceil(InSize.y / Step);
    vec2 samplepos = gl_FragCoord.xy - 0.5;
    samplepos = vec2((samplepos.x - 2.0 * width) * Step + width, samplepos.y);
    if (samplepos.x >= width && samplepos.x < 2.0 * width && samplepos.y < height) {
        float tmpCounter = 0.0;
        for (int i = 0; i < int(Step); i += 1) {
            tmpCounter += float(texture(InSampler, (vec2(samplepos.x + float(i), samplepos.y) + 0.5) * oneTexel).b * 255.0);
        }
        tmpCounter /= 255.0;
        outColor = vec4(vec3(tmpCounter), 1.0);
    }
}