#include "gba.h"
#include <stdbool.h>

extern int time, ballX, ballY;
extern bool win;
int lives = 3;
int playerSize, prevPlayerX, prevPlayerY, playerX, playerY, player_Vx, player_Vy;
int rightBound, leftBound, topBound, botBound;
bool doneDrawing = false;
int dir = 0;
bool erase = false;
playerX = 50;
playerY = 18;
player_Vx = 2;
player_Vy = 0;
rightBound = 180;
leftBound = 50;
topBound = 18;
botBound = 140;


// registering initial values
int initPx = 50;
int initPy = 18;
int initP_Vx = 2;
int initP_Vy = 0;
int initRB = 180;
int initLB = 50;
int initTB = 18;
int initBB = 140;

void drawPlayerBox() {
    drawRect(playerX, playerY, 2, 2, RED);
    drawSquare(prevPlayerX, prevPlayerY, 2, WHITE);
}

void updatePlayerBox() {
    int timestep = 3;
    // drawing up
    if (BUTTON_PRESSED(BUTTON_UP)) {
        mgba_printf("player: (%d, %d)", playerX, playerY);
        // drawing the divider with the playerbox
        if (playerY > topBound + 2) {
            dir = 1;
            doneDrawing = false;
            mgba_printf("Moving up");
            player_Vy = -2;
            player_Vx = 0;
        } 
    }

    if (dir == 1 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, playerY, 2, botBound - playerY)) {
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = true;
        playerX = leftBound;
        playerY = topBound + 2;
        boundingBox();
        lives--;
        drawLives();
    }
    // stop drawing up
    if (playerY == topBound && !doneDrawing && dir == 1) {
        mgba_printf("stopped drawing up. top bound: %d player: (%d, %d)", topBound, playerX, playerY);
        player_Vy = 0;
        player_Vx = 2;
        doneDrawing = true;
        setBoundariesX();
    }
    // drawing down
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        mgba_printf("player: (%d, %d)", playerX, playerY);
        if (playerY < botBound - 2) {
            dir = 2;
            doneDrawing = false;
            mgba_printf("moving down");
            player_Vy = 2;
            player_Vx = 0;
        }
    }
    // collision (down)
    if (dir == 2 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, topBound + 2, 2, playerY - topBound - 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = true;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }
    
    // stop drawing down
    if (playerY == botBound && !doneDrawing && dir == 2) {
        mgba_printf("stopped drawing down, player: (%d, %d)", playerX, playerY);
        player_Vy = 0;
        player_Vx = -2;
        doneDrawing = true;
        setBoundariesX();
    }

    //drawing right

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if (playerX == leftBound) {
            dir = 3;
            doneDrawing = false;
            mgba_printf("moving right");
            player_Vy = 0;
            player_Vx = 2;
        }
    }
    // collision right
    if (dir == 3 && !doneDrawing && collision(ballX, ballY, 2, 2, leftBound, playerY, playerX - leftBound, 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = true;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }

    if (playerX == rightBound && !doneDrawing && dir == 3) {
        player_Vy = 2;
        player_Vx = 0;
        mgba_printf("done drawing right");
        doneDrawing = true;
        setBoundariesY();
    }

    // drawing left
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (playerX > rightBound - 2) {
            dir = 4;
            doneDrawing = false;
            mgba_printf("moving left");
            player_Vy = 0;
            player_Vx = -2;
        }
    }
    // collision left
    if (dir == 4 && !doneDrawing && collision(ballX, ballY, 2, 2, playerX, playerY, rightBound - playerX + 2, 2)) {
        boundingBox();
        mgba_printf("COLLIDED: (%d, %d)", ballX, ballY);
        doneDrawing = true;
        playerX = leftBound;
        playerY = topBound + 2;
        lives--;
        drawLives();
    }

    if (playerX == leftBound && !doneDrawing && dir == 4) {
        player_Vy = -2;
        player_Vx = 0;
        doneDrawing = true;
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
    erase = true;
}

void setBoundariesY() {
    if (playerY < ballY) {
        topBound = playerY;
    } else {
        botBound = playerY;
    }
    erase = true;
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
