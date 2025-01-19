#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <magical_addons:utils.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;
uniform sampler2D Sampler0;
uniform float GameTime;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;

out float vertexDistance;
out float depthLevel;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {

  vec3 position = Position;
  float fast_scroll = GameTime * 9999.0;
  float slow_scroll = GameTime * 6.0;

  float xs = 0.0;
  float ys = 0.0;
  float zs = 0.0;
  float ws = 0.0;

  ivec4 colour = ivec4(texture(Sampler0, UV0) * 255);
  switch (colour.a) {
      case 1:             // Glitch 1
          xs = tan((position.x/PI) * fast_scroll);          // fast scroll
          ys = sin((position.y/PI) * slow_scroll);          // slow scroll 
          zs = tan((position.z/PI) * fast_scroll);          // flicker
          break;
      case 2:             // Glitch 2
          xs = cos((position.x/PI) * slow_scroll);         // slow scroll
          ys = tan((position.y/PI) * fast_scroll);         // fast scroll
          zs = tan((position.z/PI) * fast_scroll);         // flicker
          break;
      case 3:
          xs = 148.0;
          ys = -5.0;
          break;
      case 4:             // HUD effect icon
          position.xy = setCoords(vec2(3.5), 19., gl_VertexID % 4, vec2(16.));
          break;
      case 5:             // HUD effect background
          position.xy = setCoords(vec2(1.), 24., gl_VertexID % 4, vec2(24.));
          break;
      case 130:
          xs = -0.2;
          ws = 0.05;
          break;
    }

    gl_Position = ProjMat * ModelViewMat * vec4(position+vec3(xs,ys,zs), 1.0);

    depthLevel = position.z;
    vertexDistance = fog_distance(position, FogShape);
    vertexColor = Color;
    texCoord0 = UV0;
}