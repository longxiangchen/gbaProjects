# 1 "boundingBox.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "boundingBox.c"
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
# 2 "boundingBox.c" 2

extern int topBound, botBound, rightBound, leftBound;

int boxWidth, boxHeight, boxArea;

void boundingBox() {
    boxWidth = rightBound - leftBound - 2;
    boxHeight = botBound - topBound - 2;
    boxArea = botBound * rightBound;

    drawRect(leftBound+2, topBound+2, boxWidth, boxHeight, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawRect(leftBound+2, topBound, boxWidth, 2, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(leftBound+2, botBound, boxWidth, 2, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(leftBound, topBound, 2, boxHeight + 4, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(rightBound, topBound, 2, boxHeight + 4, ((31&31) | (31&31) << 5 | (31&31) << 10));
}
