#version 330

#define SPIDER_EYE_COLOUR_0            0xA80E0E
#define SPIDER_EYE_COLOUR_1            0x3C0202
#define SPIDER_EYE_COLOUR_2            0x220000
#define SPIDER_EYE_COLOUR_EMISSIVE_0   0xFF0E0E
#define SPIDER_EYE_COLOUR_EMISSIVE_1   0xA60202
#define SPIDER_EYE_COLOUR_EMISSIVE_2   0x620000
#define NO_AMBIENT_OCCLUSION           0x00FE00
#define NO_TINT_SHADING                0x0000FE

int vec3ToInt(vec3 col) {
   ivec3 icol = ivec3(col*255.);
   return int((icol.r << 16) + (icol.g << 8) + icol.b);
}

vec3 intToVec3(int col) {
   vec3 vec;
   vec.r = float(col >> 16 & 0xFF) / 255.0;
   vec.g = float(col >> 8 & 0xFF) / 255.0;
   vec.b = float(col & 0xFF) / 255.0;
   return vec;
}