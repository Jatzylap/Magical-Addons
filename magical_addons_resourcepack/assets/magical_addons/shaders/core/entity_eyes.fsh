#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;

    if (color.r > color.b + color.g && color.a == 1.0) {
        discard;
    }

    fragColor = color * ColorModulator * linear_fog_fade(vertexDistance, FogStart, FogEnd);
}