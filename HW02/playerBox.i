# 1 "playerBox.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "playerBox.c"
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
# 2 "playerBox.c" 2
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdbool.h" 1 3 4
# 3 "playerBox.c" 2

extern int time, ballX, ballY;
extern 
# 5 "playerBox.c" 3 4
      _Bool 
# 5 "playerBox.c"
           win;
int lives = 3;
int playerSize, prevPlayerX, prevPlayerY, playerX, playerY, player_Vx, player_Vy;
int rightBound, leftBound, topBound, botBound;

# 9 "playerBox.c" 3 4
_Bool 
# 9 "playerBox.c"
    doneDrawing = 
# 9 "playerBox.c" 3 4
                  0
# 9 "playerBox.c"
                       ;
int dir = 0;

# 11 "playerBox.c" 3 4
_Bool 
# 11 "playerBox.c"
    erase = 
# 11 "playerBox.c" 3 4
            0
# 11 "playerBox.c"
                 ;
playerX = 50;
playerY = 18;
player_Vx = 2;
player_Vy = 0;
rightBound = 180;
leftBound = 50;
topBound = 18;
botBound = 140;



int initPx = 50;
int initPy = 18;
int initP_Vx = 2;
int initP_Vy = 0;
int initRB = 180;
int initLB = 50;
int initTB = 18;
int initBB = 140;

void drawPlayerBox() {
    drawRect(playerX, playerY, 2, 2, ((31&31) | (0&31) << 5 | (0&31) << 10));
    drawSquare(prevPlayerX, prevPlayerY, 2, ((31&31) | (31&31) << 5 | (31&31) << 10));
}

void updatePlayerBox() {
    int timestep = 3;

    if ((!(~(oldButtons) & ((1<<6))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<6))))) {
        mgba_printf("player: (%d, %d)", playerX, playerY);

        if (playerY > topBound + 2) {
            dir = 1;
            doneDrawing = 
# 45 "playerBox.c" 3 4
                         0
# 45 "playerBox.c"
                              ;
            mgba_printf("Moving up");
            player_Vy = -2;
            player_Vx = 0;
        }
    }

    if (dir == 1 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, playerY, 2, botBound - playerY)) {
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = 
# 54 "playerBox.c" 3 4
                     1
# 54 "playerBox.c"
                         ;
        playerX = leftBound;
        playerY = topBound + 2;
        boundingBox();
        lives--;
        drawLives();
    }

    if (playerY == topBound && !doneDrawing && dir == 1) {
        mgba_printf("stopped drawing up. top bound: %d player: (%d, %d)", topBound, playerX, playerY);
        player_Vy = 0;
        player_Vx = 2;
        doneDrawing = 
# 66 "playerBox.c" 3 4
                     1
# 66 "playerBox.c"
                         ;
        setBoundariesX();
    }

    if ((!(~(oldButtons) & ((1<<7))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<7))))) {
        mgba_printf("player: (%d, %d)", playerX, playerY);
        if (playerY < botBound - 2) {
            dir = 2;
            doneDrawing = 
# 74 "playerBox.c" 3 4
                         0
# 74 "playerBox.c"
                              ;
            mgba_printf("moving down");
            player_Vy = 2;
            player_Vx = 0;
        }
    }

    if (dir == 2 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, topBound + 2, 2, playerY - topBound - 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = 
# 84 "playerBox.c" 3 4
                     1
# 84 "playerBox.c"
                         ;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }


    if (playerY == botBound && !doneDrawing && dir == 2) {
        mgba_printf("stopped drawing down, player: (%d, %d)", playerX, playerY);
        player_Vy = 0;
        player_Vx = -2;
        doneDrawing = 
# 96 "playerBox.c" 3 4
                     1
# 96 "playerBox.c"
                         ;
        setBoundariesX();
    }



    if ((!(~(oldButtons) & ((1<<4))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<4))))) {
        if (playerX == leftBound) {
            dir = 3;
            doneDrawing = 
# 105 "playerBox.c" 3 4
                         0
# 105 "playerBox.c"
                              ;
            mgba_printf("moving right");
            player_Vy = 0;
            player_Vx = 2;
        }
    }

    if (dir == 3 && !doneDrawing && collision(ballX, ballY, 2, 2, leftBound, playerY, playerX - leftBound, 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = 
# 115 "playerBox.c" 3 4
                     1
# 115 "playerBox.c"
                         ;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }

    if (playerX == rightBound && !doneDrawing && dir == 3) {
        player_Vy = 2;
        player_Vx = 0;
        mgba_printf("done drawing right");
        doneDrawing = 
# 126 "playerBox.c" 3 4
                     1
# 126 "playerBox.c"
                         ;
        setBoundariesY();
    }


    if ((!(~(oldButtons) & ((1<<5))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<5))))) {
        if (playerX > rightBound - 2) {
            dir = 4;
            doneDrawing = 
# 134 "playerBox.c" 3 4
                         0
# 134 "playerBox.c"
                              ;
            mgba_printf("moving left");
            player_Vy = 0;
            player_Vx = -2;
        }
    }

    if (dir == 4 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, playerY, rightBound - playerX + 2, 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = 
# 144 "playerBox.c" 3 4
                     1
# 144 "playerBox.c"
                         ;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }

    if (playerX == leftBound && !doneDrawing && dir == 4) {
        player_Vy = -2;
        player_Vx = 0;
        doneDrawing = 
# 154 "playerBox.c" 3 4
                     1
# 154 "playerBox.c"
                         ;
        setBoundariesY();
    }

    if (time % timestep == 0 && time != 0) {
        prevPlayerX = playerX;
        prevPlayerY = playerY;
        playerX += player_Vx;
        playerY += player_Vy;

    }
    checkBoundaries(rightBound, leftBound, topBound, botBound);
}

void setBoundariesX() {
    if (playerX < ballX) {
        leftBound = playerX;
    } else if (playerX > ballX) {
        rightBound = playerX;
    }
    erase = 
# 174 "playerBox.c" 3 4
           1
# 174 "playerBox.c"
               ;
}

void setBoundariesY() {
    if (playerY < ballY) {
        topBound = playerY;
    } else {
        botBound = playerY;
    }
    erase = 
# 183 "playerBox.c" 3 4
           1
# 183 "playerBox.c"
               ;
}

void checkBoundaries(int rightBound, int leftBound, int topBound, int botBound) {
    if (playerX >= rightBound) {
        player_Vx = 0;
        player_Vy = 2;
    }
    if (playerY >= botBound) {
        player_Vx = -2;
        player_Vy = 0;
    }
    if (playerX <= leftBound) {
        player_Vx = 0;
        player_Vy = -2;
    }
    if (playerY <= topBound && playerX == leftBound) {
        player_Vx = 2;
        player_Vy = 0;
    }
}
