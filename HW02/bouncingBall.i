# 1 "bouncingBall.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bouncingBall.c"
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
# 2 "bouncingBall.c" 2

int time;
int ballSize, ballX, ballY, ball_Vx, ball_Vy;
int prevBallX, prevBallY;
int padding, screenWidth, screenHeight;

time = 0;
ballSize = 2;
screenWidth = 180;
screenHeight = 120;
ballX = 52;
ballY = 20;
ball_Vx = 2;
ball_Vy = 4;
padding = 1;

extern int rightBound, leftBound, topBound, botBound;
void updateBallPosition() {
    int timestep = 3;
    if (time % timestep == 0 && time != 0) {
        prevBallX = ballX;
        prevBallY = ballY;
        ballX += ball_Vx;
        ballY += ball_Vy;

        if (ballX < leftBound + 2 + padding) {
            ball_Vx = -ball_Vx;
        }
        if (ballY < topBound + 2 + padding) {
            ball_Vy = -ball_Vy;
        }
        if (ballX + ballSize >= rightBound - padding) {
            ball_Vx = -ball_Vx;
        }
        if (ballY + ballSize >= botBound - padding) {
            ball_Vy = -ball_Vy;
        }
    }
}

void drawSquare(u8 x, u8 y, u8 size, u16 color) {
    for (u8 i = 0; i < size; i++) {
        for (u8 j = 0; j < size; j++) {
            (videoBuffer[((y+j) * (240) + (x+i))] = color);
        }
    }
}
void drawBouncingBall() {
    drawSquare(prevBallX, prevBallY, ballSize, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawSquare(ballX, ballY, ballSize, ((0&31) | (0&31) << 5 | (31&31) << 10));
}
