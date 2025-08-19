#version 150

#moj_import <light_painter:utils.glsl>
#moj_import <light_painter:texint.glsl>
#moj_import <minecraft:projection.glsl>

in vec4 Position;

uniform sampler2D LightsSampler;
uniform sampler2D VolumeSampler;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 DiffuseSize;
    vec2 DiffuseDepthSize;
    vec2 LightsSize;
    vec2 VolumeSize;
    vec2 BlurSize;
};

out vec2 texCoord;
flat out vec2 oneTexel;
flat out vec2 oneTexelLights;
flat out vec2 oneTexelVolume;
flat out float aspectRatio;
flat out float conversionK;

void main(){
    vec4 outPos = ProjMat * vec4(Position.xy * OutSize, 0.0, 1.0);
    oneTexel = 1.0 / OutSize;
    oneTexelLights = 1.0 / LightsSize;
    oneTexelVolume = 1.0 / VolumeSize;
    aspectRatio = OutSize.x / OutSize.y;
    texCoord = Position.xy;
    conversionK = tan(FOV / 360.0 * PI) * 2.0;

    gl_Position = vec4(outPos.xy, 0.2, 1.0);
}
