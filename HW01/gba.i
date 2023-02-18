# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
# 40 "gba.h"
void waitForVBlank();
# 59 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 76 "gba.h"
extern unsigned short oldButtons;
# 2 "gba.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            (videoBuffer[((y + i) * (240) + (x + j))] = color);
        }
    }
}

void fillScreen(unsigned short color) {

    for (int i = 0; i < (240 * 160); i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}
