#version 150

// Magical Addons
// https://github.com/Jatzylap/Magical-Addons

float emission = 1.0;
vec3 tintColor = texture(Sampler0, texCoord).rgb;
int alpha = int(texture(Sampler0, texCoord).a * 255);

#ifdef FLAT_ITEM
    switch (alpha) {
        case 43:    // Hurt overlay
            if (color.rgb == vec3(1., 0., 0.)) color *= lightColor;
            break;
        case 253: // Items
            emission = mix(sin(GameTime*4400), 1.0, 5.0);
            break;
    }
    if (color.a < 0.1) discard;
#endif

#ifdef BLOCK_ITEM
    if (alpha == 254) emission = 2.0; // Ore clusters (cross1)
    if (alpha == 253) emission = 1.5; // Ore clusters (cross2)
#endif

#ifdef ENTITY
    if (alpha == 254) color.rgb = tintColor; // Spider eyes
#endif

color.rgb *= vec3(emission);