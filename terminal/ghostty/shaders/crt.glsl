// CRT shader effect for Ghostty
// Adds scanlines, slight curve, and vintage monitor glow

#version 330

uniform sampler2D tex;
uniform vec2 resolution;
in vec2 frag_tex_coord;
out vec4 frag_color;

void main() {
    vec2 uv = frag_tex_coord;
    
    // Add subtle barrel distortion
    vec2 dc = uv - 0.5;
    dc *= 1.0 + dot(dc, dc) * 0.02;
    uv = dc + 0.5;
    
    // Sample the texture
    vec4 color = texture(tex, uv);
    
    // Add scanlines
    float scanline = sin(uv.y * resolution.y * 2.0) * 0.04;
    color.rgb -= scanline;
    
    // Add slight vignette
    float vignette = 1.0 - dot(dc, dc) * 0.3;
    color.rgb *= vignette;
    
    // Output with slight brightness boost
    frag_color = vec4(color.rgb * 1.1, color.a);
}