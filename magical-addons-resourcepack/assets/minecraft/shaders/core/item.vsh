#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:sample_lightmap.glsl>
#moj_import <minecraft:animation_sprite.glsl>
#moj_import <magical_addons:utils.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);

    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * sample_lightmap(Sampler2, UV2);

    /*
    // Get mipmap levels
    int maxLevel = 0;
    for (int i = 0; i < 128; i += 1) {
        vec2 a = textureSize(Sampler0, i);
        vec2 b = textureSize(Sampler0, i + 1);
        if (a != vec2(0,0) && b != vec2(0,0)) {
            maxLevel = i;
            break;
        }
    }
    */

    // No ambient occlusion
    vec3 alpha = texture(Sampler0, UV0).rgb;
    if (ProjMat[3].x != -1 && // Exclude GUI models
        vec3ToInt(alpha) == ALPHA_CUTOUT_COLOUR) {
        vertexColor = Color * sample_lightmap(Sampler2, UV2);
    }


    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    texCoord0 = UV0;
}
