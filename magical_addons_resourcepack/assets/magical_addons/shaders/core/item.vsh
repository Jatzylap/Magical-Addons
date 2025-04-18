#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <magical_addons:utils.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform float FogStart;
uniform int FogShape;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform float GameTime;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

out float vertexDistance;
out vec4 vertexColor;
out vec4 lightColor;
out vec4 overlayColor;
out vec4 pos;
out vec2 texCoord;
out vec2 texCoord2;
out vec2 texCoord3;
out vec3 Pos;
out float transition;
out float scale;

flat out int isMarker;
flat out int isCustom;
flat out int isGUI;
flat out int isHand;
flat out int noshadow;

#moj_import <objmc:tools.glsl>

void main() {
    Pos = Position;
    texCoord = UV0;
    overlayColor = vec4(1.0);
    lightColor = minecraft_sample_lightmap(Sampler2, UV2);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    isMarker = int(isLightMarker(vec4(Color.rgb,texture(Sampler0, texCoord).a)));

    pos = ModelViewMat * vec4(Pos, 1.0);

    if (isMarker == 1) {
        if (gl_VertexID % 4 == 0) {
            pos.xy += vec2(-HALFMARKER, HALFMARKER);
            texCoord3 = vec2(0.0, 0.0);
        }
        else if (gl_VertexID % 4 == 1) {
            pos.xy += vec2(-HALFMARKER, -HALFMARKER);
            texCoord3 = vec2(0.0, 1.0);
        }
        else if (gl_VertexID % 4 == 2) {
            pos.xy += vec2(HALFMARKER, -HALFMARKER);
            texCoord3 = vec2(1.0, 1.0);
        }
        else {
            pos.xy += vec2(HALFMARKER, HALFMARKER);
            texCoord3 = vec2(1.0, 0.0);
        }
    }

    scale = abs(HALFMARKER * ProjMat[1][1] / pos.z);
    pos = ProjMat * pos;

    if (isMarker == 1) {
        vec4 distProbe = inverse(ProjMat) * vec4(0.0, 0.0, 1.0, 1.0);
        float far = round(length(distProbe.xyz / distProbe.w) / 64.0) * 64.0;
        float near = 0.05;
        float k = (far + near) / (far - near);
        pos.z = (pos.z - pos.w * k) * 10.0 + pos.w * k;
    }

    else {
        #define ENTITY
        #moj_import <objmc:main.glsl>
        pos = ProjMat * ModelViewMat * vec4(Pos, 1.0);
    }

    gl_Position = pos;
    vertexDistance = fog_distance(Pos, FogShape);
}