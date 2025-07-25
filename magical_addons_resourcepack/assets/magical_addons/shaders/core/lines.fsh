#version 150

#moj_import <minecraft:fog.glsl>

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor * ColorModulator;
    fragColor = linear_fog(vec4(color.rgb,1.), vertexDistance, FogStart, FogEnd, FogColor);
}
