#version 130

#define SERVO_GL3

uniform sampler2D sDiffuse;
uniform sampler2D sMask;
uniform vec4 uBlendParams;
uniform vec4 uAtlasParams;
uniform vec2 uDirection;
uniform vec4 uFilterParams;

in vec2 vPosition;
in vec4 vColor;
in vec2 vColorTexCoord;
in vec2 vMaskTexCoord;
in vec4 vBorderPosition;
in vec4 vBorderRadii;
in vec2 vDestTextureSize;
in vec2 vSourceTextureSize;
in float vBlurRadius;
in vec4 vTileParams;

out vec4 oFragColor;

vec4 Texture(sampler2D sampler, vec2 texCoord) {
    return texture(sampler, texCoord);
}

float GetAlphaFromMask(vec4 mask) {
    return mask.r;
}

void SetFragColor(vec4 color) {
    oFragColor = color;
}

