#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 texel = texture(Sampler0, texCoord0);
    vec4 color = texel * vertexColor * ColorModulator;
    int alpha = int(texel.a * 255);

    #define BLOCK
    #moj_import <magical_addons:light.glsl>

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}