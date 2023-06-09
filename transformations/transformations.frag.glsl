#version 410 core

in vec3 ourColor;
in vec2 TexCoord;

out vec4 FragColor;

// Texture location is defined by using glActiveTexture allowing us
// to bind multiple texture at once to be used by the shaders

uniform sampler2D texture1;
uniform sampler2D texture2;

void main() {
  FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2) * vec4(ourColor, 1.0);
}
