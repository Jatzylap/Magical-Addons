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
in vec4 pos;
in vec2 texCoord;
in vec2 texCoord2;
in vec2 texCoord3;
in vec3 Pos;
in float transition;
in float scale;

flat in int isMarker;
flat in int isCustom;
flat in int isGUI;
flat in int isHand;
flat in int noshadow;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord);

    if (isMarker == 0) {
        color = mix(color, texture(Sampler0, texCoord2), transition);
        #define ENTITY
        #moj_import <objmc:light.glsl>
        #define FLAT_ITEM
        #moj_import <magical_addons:light.glsl>
        fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
    }

    else {
        float onePixelToUV = 0.51 / (gl_FragCoord.y * 2.0 / (pos.y / pos.w + 1.0) * scale);
        if (!(abs(texCoord3.x - 0.5) <= onePixelToUV && abs(texCoord3.y - 0.5) <= onePixelToUV)) {
            discard;
        }
        fragColor = linear_fog(vec4(vertexColor.rgb,color.a), vertexDistance, FogStart, FogEnd, FogColor);
    }
}