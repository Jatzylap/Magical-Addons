#version 150

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <magical_addons:utils.glsl>

uniform sampler2D Sampler0;

uniform mat4 ProjMat;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform float GameTime;
uniform vec4 FogColor;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;
in vec2 texCoord1;
in vec2 texCoord2;
in vec4 normal;
in vec4 glpos;
in float marker;
in float scale;

// objmc vars
in vec4 lightColor;
in vec4 overlayColor;
in vec2 texCoord;
in vec3 Pos;
in float transition;
flat in int isCustom;
flat in int noshadow;
flat in int isGUI_;
flat in int isHand_;

out vec4 fragColor;

void main() {
    bool hand = isHand(FogStart, FogEnd);
    bool gui = isGUI(ProjMat);
    vec4 color = texture(Sampler0, texCoord0);
    if (marker < 0.5) {
        color = mix(texture(Sampler0, texCoord), texture(Sampler0, texCoord2), transition);
        if (color.a < 0.01) discard;
        //color *= vertexColor * ColorModulator;

        // objmc lighting
        #define ENTITY
        #moj_import <objmc:light.glsl>

        fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
        fragColor.a = fragColor.a < 0.1 ? 0.1 : fragColor.a;

        if (!gui && gl_FragCoord.z <= LIGHTDEPTH) {
            gl_FragDepth = LIGHTDEPTH + 10e-7;
        }
        else {
            gl_FragDepth = gl_FragCoord.z;
        }
    } else {
        float onePixelToUV = 0.55 / (gl_FragCoord.y * 2.0 / (glpos.y / glpos.w + 1.0) * scale);
        if (!(abs(texCoord2.x - 0.5) <= onePixelToUV && abs(texCoord2.y - 0.5) <= onePixelToUV)) {
            discard;
        }
        fragColor = linear_fog(vec4(vertexColor.rgb,color.a), vertexDistance, FogStart, FogEnd, FogColor);
        fragColor.a = 24.0 / 255.0;

        gl_FragDepth = gl_FragCoord.z * LIGHTDEPTH;
    }
}