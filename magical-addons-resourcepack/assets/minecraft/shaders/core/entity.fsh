#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <magical_addons:utils.glsl>

uniform sampler2D Sampler0;

#ifdef DISSOLVE
uniform sampler2D DissolveMaskSampler;
#endif

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
#ifdef PER_FACE_LIGHTING
in vec4 vertexPerFaceColorBack;
in vec4 vertexPerFaceColorFront;
#else
in vec4 vertexColor;
#endif

#ifndef EMISSIVE
in vec4 lightMapColor;
#endif

#ifndef NO_OVERLAY
in vec4 overlayColor;
#endif

in vec2 texCoord0;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
#ifdef ALPHA_CUTOUT
    if (color.a < ALPHA_CUTOUT) {
        discard;
    }
#endif

#ifdef PER_FACE_LIGHTING
    vec4 faceVertexColor = gl_FrontFacing ? vertexPerFaceColorFront : vertexPerFaceColorBack;
#else
    vec4 faceVertexColor = vertexColor;
#endif

#ifdef DISSOLVE
    if (faceVertexColor.a < texture(DissolveMaskSampler, texCoord0).a) {
        discard;
    }
    // The dissolve effect entirely replaces translucency
    faceVertexColor.a = 1.0;
#endif

    color *= faceVertexColor * ColorModulator;
#ifndef NO_OVERLAY
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
#endif
    // Remove emissive spider eye colours
    if (vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_EMISSIVE_0 ||
        vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_EMISSIVE_1 ||
        vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_EMISSIVE_2) discard;
#ifndef EMISSIVE
    // Replace spider eye normal colours with emissive
    if (vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_0) {
        color.rgb = intToVec3(SPIDER_EYE_COLOUR_EMISSIVE_0);
    }
    else if (vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_1) {
        color.rgb = intToVec3(SPIDER_EYE_COLOUR_EMISSIVE_1);
    }
    else if (vec3ToInt(texture(Sampler0, texCoord0).rgb) == SPIDER_EYE_COLOUR_2) {
        color.rgb = intToVec3(SPIDER_EYE_COLOUR_EMISSIVE_2);
    }
    else color *= lightMapColor;
#endif

    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
