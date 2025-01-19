#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <magical_addons:utils.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform float GameTime;
uniform vec4 FogColor;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightColor;
in vec4 overlayColor;
in vec2 texCoord;
in vec2 texCoord2;
in vec3 Pos;
in vec3 tintColor;
in float transition;

flat in int isMarker;
flat in int isCustom;
flat in int isGUI;
flat in int isHand;
flat in int noshadow;

out vec4 fragColor;

void main() {
    int alpha = int(texture(Sampler0, texCoord).a * 255);
    vec4 color = mix(texture(Sampler0, texCoord), texture(Sampler0, texCoord2), transition);

    #define ENTITY
    #moj_import <objmc:light.glsl>

    #define FLAT_ITEM
    #moj_import <magical_addons:light.glsl>

    if (isMarker == 1) fragColor = linear_fog(color, vertexDistance, 1.0, 1.0, color);
    else fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}