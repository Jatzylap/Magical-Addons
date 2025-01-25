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
out vec2 texCoord;
out vec2 texCoord2;
out vec3 Pos;
out vec3 tintColor;
out float transition;

flat out int isMarker;
flat out int isCustom;
flat out int isGUI;
flat out int isHand;
flat out int noshadow;

#moj_import <objmc:tools.glsl>

#define LIGHT_MARKER_SCALE 0.002

void main() {
    Pos = Position;
    texCoord = UV0;
    tintColor = Color.rgb;
    overlayColor = vec4(1.0);
    lightColor = minecraft_sample_lightmap(Sampler2, UV2);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
    isMarker = int(isLightMarker(vec4(tintColor, texture(Sampler0, texCoord).a)));  // Color = Not shaded ; vertexColor = Shaded
    vec4 pos = ModelViewMat * vec4(Pos, 1.0);

    if (isMarker == 1) {

        float scalar = (LIGHT_MARKER_SCALE) * (pos.z - pos.w);

        if (gl_VertexID % 4 == 0) pos.xy += vec2(-scalar, -scalar);         // Top-left corner
        else if (gl_VertexID % 4 == 1) pos.xy += vec2(scalar, -scalar);     // Bottom-left corner
        else if (gl_VertexID % 4 == 2) pos.xy += vec2(scalar, scalar);      // Bottom-right corner
        else pos.xy += vec2(-scalar, scalar);                               // Top-right corner

        pos = ProjMat * pos;
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