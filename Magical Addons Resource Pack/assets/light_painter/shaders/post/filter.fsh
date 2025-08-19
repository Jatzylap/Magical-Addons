#version 150

#moj_import <light_painter:utils.glsl>

uniform sampler2D ItemEntitySampler;
uniform sampler2D ItemEntityDepthSampler;

in vec2 texCoord;

out vec4 fragColor;

void main() {
    fragColor = vec4(0.0);
    float depth = texture(ItemEntityDepthSampler, texCoord).r;

    if (depth < LIGHTDEPTH) {
        depth = LinearizeDepth(depth / LIGHTDEPTH);
        if (depth < LIGHTRANGE) {
            fragColor = texture(ItemEntitySampler, texCoord);
            fragColor *= 255.0 / (255.0 * LIGHTALPHA);
        }
    }
}