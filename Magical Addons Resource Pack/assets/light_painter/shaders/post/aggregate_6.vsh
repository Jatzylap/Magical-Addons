#version 150

#moj_import <light_painter:utils.glsl>

in vec4 Position;

layout(std140) uniform SamplerInfo {
    vec2 OutSize;
    vec2 SearchLayerSize;
    vec2 ItemEntityDepthSize;
    vec2 ColoredCentersSize;
};

out vec2 texCoord;
flat out vec2 inOneTexel;
flat out float inAspectRatio;
flat out float conversionK;

void main(){
    float x = -1.0; 
    float y = -1.0;
    if (Position.x > 0.001){
        x = 1.0;
    }
    if (Position.y > 0.001){
        y = 1.0;
    }

    inAspectRatio = SearchLayerSize.x / SearchLayerSize.y;
    inOneTexel = 1.0 / SearchLayerSize;
    texCoord = Position.xy;
    conversionK = tan(FOV / 360.0 * PI) * 2.0;

    gl_Position = vec4(x, y, 0.2, 1.0);
}
