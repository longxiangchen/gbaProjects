# 1 "setup.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "setup.c"
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
# 2 "setup.c" 2


void boundingBox() {
    drawRect(30, 20, 180, 120, ((15&31) | (15&31) << 5 | (15&31) << 10));
    drawRect(30, 18, 180, 2, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(30, 140, 180, 2, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(28, 18, 2, 124, ((31&31) | (31&31) << 5 | (31&31) << 10));
    drawRect(210, 18, 2, 124, ((31&31) | (31&31) << 5 | (31&31) << 10));
}

int playerSize, prevPlayerX, prevPlayerY, playerX, playerY, player_Vx, player_Vy;
playerX = 28;
playerY = 18;
player_Vx = 2;
player_Vy = 0;
extern int time;
void drawPlayerBox() {
    drawRect(playerX, playerY, 2, 2, ((31&31) | (0&31) << 5 | (0&31) << 10));
}

void updatePlayerBox() {
    int timestep = 3;
    if (time % timestep == 0 && time != 0) {
        prevPlayerX = playerX;
        prevPlayerY = playerY;
        playerX += player_Vx;
        playerY += player_Vy;

        if (playerX >= 210) {

            player_Vx = 0;
            player_Vy = 2;
        }
        if (playerY >= 140) {
            player_Vx = -2;
            player_Vy = 0;
        }
        if (playerX <= 28) {
            player_Vx = 0;
            player_Vy = -2;
        }
        if (playerY <= 18 && playerX == 28) {
            player_Vx = 2;
            player_Vy = 0;
        }
    }
}
