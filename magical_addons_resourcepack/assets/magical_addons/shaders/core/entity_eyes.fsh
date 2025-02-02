#version 150

#moj_import <minecraft:fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightMapColor;
in vec4 overlayColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    vec3 tintColor = texture(Sampler0, texCoord0).rgb;
    int alpha = int(texture(Sampler0, texCoord0).a * 255);
    #define ENTITY_EYES
    #ifdef ALPHA_CUTOUT
        if (color.a < ALPHA_CUTOUT) {
            discard;
        }
    #endif
        color *= vertexColor * ColorModulator;
    #ifndef NO_OVERLAY
        color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
    #endif
    #ifndef EMISSIVE
        color *= lightMapColor;
    #endif
    #moj_import <magical_addons:light.glsl>
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}