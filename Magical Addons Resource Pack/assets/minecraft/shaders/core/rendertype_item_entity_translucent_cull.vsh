#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <light_painter:utils.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;

// light painter vars
out vec4 normal;
out vec4 glpos;
out float scale;
flat out int marker;

// objmc vars
out vec4 lightColor;
out vec4 overlayColor;
out vec2 texCoord;
out vec3 Pos;
out float transition;
flat out int isCustom;
flat out int noshadow;
flat out int isGUI_;
flat out int isHand_;

#define HALFMARKER tmp.z / 240.0

#moj_import <objmc:tools.glsl>

void main() {
    texCoord0 = UV0;
    texCoord1 = UV1;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);

    // objmc
    Pos = Position;
    texCoord = UV0;
    overlayColor = vec4(1);
    lightColor = texelFetch(Sampler2, UV2 / 16, 0);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);

    // light marker
    vec4 tmp = ModelViewMat * vec4(Position, 1.0);
    vec4 tmpcol = texture(Sampler0, UV0);
    bool hand = isHand(FogEnvironmentalStart, FogEnvironmentalEnd);
    bool gui = isGUI(ProjMat);

    marker = int(!hand && !gui && (tmpcol.rgb == vec3(1.0, 1.0, 1.0) && tmpcol.a == LIGHTALPHA));
    
    if (marker == 1) {
        vertexColor = vec4(tmpcol.rgb, 1.0) * Color;
        
        if (gl_VertexID % 4 == 0) {
            tmp.xy += vec2(-HALFMARKER, HALFMARKER);
            texCoord2 = vec2(0.0, 0.0);
        }
        else if (gl_VertexID % 4 == 1) {
            tmp.xy += vec2(-HALFMARKER, -HALFMARKER);
            texCoord2 = vec2(0.0, 1.0);
        }
        else if (gl_VertexID % 4 == 2) {
            tmp.xy += vec2(HALFMARKER, -HALFMARKER);
            texCoord2 = vec2(1.0, 1.0);
        }
        else {
            tmp.xy += vec2(HALFMARKER, HALFMARKER);
            texCoord2 = vec2(1.0, 0.0);
        }
        
        scale = abs(HALFMARKER * ProjMat[1][1] / tmp.z);
        tmp = ProjMat * tmp;
        glpos = tmp;
    }

    else {
        #define ENTITY
        #moj_import <objmc:main.glsl>
        tmp = ProjMat * ModelViewMat * vec4(Pos, 1.0);
    }

    gl_Position = tmp;

    sphericalVertexDistance = fog_spherical_distance(Pos);
    cylindricalVertexDistance = fog_cylindrical_distance(Pos);


}