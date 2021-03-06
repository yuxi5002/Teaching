#version 330

// VS locations
#define POSITION    0
#define TEXCOORD    1

// FS locations
#define FRAG_COLOR  0

layout(location = POSITION) in vec2 in_Position;
layout(location = COLOR) in vec2 in_TexCoord;

out block
{
    vec2 TexCoord;
} VS_Out;

uniform mat4 mat_MVP;

void main()
{
    gl_Position = mat_MVP * vec4(in_Position, 0.0, 1.0);

    VS_Out.TexCoord = in_TexCoord;
}
