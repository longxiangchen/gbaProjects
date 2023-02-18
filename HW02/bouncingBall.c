#include "gba.h"

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
            setPixel(x+i, y+j, color);
        }
    }
}
void drawBouncingBall() {
    drawSquare(prevBallX, prevBallY, ballSize, GRAY);
    drawSquare(ballX, ballY, ballSize, BLUE);
}