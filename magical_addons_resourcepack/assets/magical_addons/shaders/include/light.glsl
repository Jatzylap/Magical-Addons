#version 150

// Magical Addons
// https://github.com/Jatzylap/Magical-Addons

vec4 emission = vec4(1.0);

#ifdef FLAT_ITEM
    float frequency = 1.0;                  // frequency of sine wave
    float animation = GameTime * 400;       // animation speed
    float phase = 1.0;                      // phase of sine wave
    float sine = sin(2.0 * PI * frequency * animation + phase);
    vec3 min = emission.rgb;
    vec3 max = emission.rgb;
    switch (alpha) {
        case 1:   // Hurt overlay
            color = vec4(1.,0.,0.,0.17) * lightColor;
            break;
        case 3:   // Light marker
            color.rgb = tintColor;
            break;
        case 251: // Glyphs (not Time glyph)
            min -= vec3(0.6), max += vec3(2.0);
            break;
        case 252: // Time glyph
            min = emission.rgb, max += vec3(128.0);
            break;
        case 253: // Items
            min = emission.rgb, max += vec3(6.0);
            break;
    }
    vec3 scale = (sine / 2.0) * (max - min) + min;
    vec3 light0 = Light0_Direction;   // Light for item models
    vec3 light1 = Light1_Direction;   // Light for held item models
    if (alpha == 251 || alpha == 252 || alpha == 253) emission.rgb = vec3(clamp(scale, min, max));
    else if (color.a < 0.1 && isMarker == 0 || alpha == 250 && !(light0[0] <= -0.22251898 && light0[0] >= -0.232518988)) discard;  // Remove flat texture from 3d model
#endif

#ifdef BLOCK_ITEM
    if (alpha == 254) emission.rgb += vec3(1.0); // Ore clusters (cross1)
    if (alpha == 253) emission.rgb += vec3(0.5); // Ore clusters (cross2)
#endif

#ifdef BLOCK
    if (alpha == 254) emission.rgb += vec3(3.0);
    #ifdef ALPHA_CUTOUT
        if (color.a < ALPHA_CUTOUT) {
            discard;
        }
    #endif
#endif

#ifdef ENTITY
    if (alpha == 254) color.rgb = tintColor;
#endif

#ifdef ENTITY_EYES
    if (color.r > color.b + color.g && color.a == 1.0) discard; // Spider eyes
#endif

color.rgb *= emission.rgb;