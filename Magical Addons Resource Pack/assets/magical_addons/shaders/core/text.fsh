#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in float depthLevel;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 texColor = texture(Sampler0, texCoord0);
    vec4 color = texColor * vertexColor * ColorModulator;
    
    if ((color.a < 0.1)
    || (color.a * 255. == 252. && depthLevel == 2200.0001)  // Remove text shadow
    ) discard;

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}