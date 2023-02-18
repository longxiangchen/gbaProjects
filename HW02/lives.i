# 1 "lives.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lives.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 36 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 56 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
# 2 "lives.c" 2

extern int lives;
int liveX = 0;

void drawLives() {
    drawString(0, 10, "LIVES:", ((31&31) | (31&31) << 5 | (31&31) << 10));
    for (int i = 0; i < lives; i++) {
        drawChar(liveX, 25, 'X', ((31&31) | (31&31) << 5 | (31&31) << 10));
        liveX += 5;
    }
}
