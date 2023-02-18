#include "gba.h"
#include "print.h"
#include <stdbool.h>

// buttons 
unsigned short oldButtons;
unsigned short buttons;

// prototypes
void initialize();
void updateBallPosition();
void drawSquare();
void boundingBox();
void playerBox();
void draw();
void update();
bool win = false;

// importing external values
extern int boxArea, rightBound, botBound;
extern int lives;
extern int time, boxHeight, boxWidth;
extern int ballSize, ballX, ballY, ball_Vx, ball_Vy;
extern int prevBallX, prevBallY;
extern int padding, screenWidth, screenHeight;
extern int prevPlayerX, prevPlayerY, playerX, playerY;
volatile u16* scanlineCounter = (u16*) 0x04000006;
extern bool erase;

enum STATE {START, INFO, GAME, LOSE, WIN} state;

// other values
bool drawLine = false;
int main() {
    mgba_open();
    initialize();

    while(1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state) {
            case START:
                if (BUTTON_PRESSED(BUTTON_SELECT)) {
                    goToInfo();
                }
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToGame();
                }
                break;
            case INFO:
                if (BUTTON_PRESSED(BUTTON_SELECT)) {
                    goToStart();
                }
                if (BUTTON_PRESSED(BUTTON_START)) {
                    goToGame();
                }
            case GAME:
                updateGame();
                waitForVBlank();
                drawGame();
                if (lives < 1) {
                    goToLose();
                }
                if (win) {
                    goToWin();
                }
                // if (BUTTON_PRESSED(BUTTON_SELECT)) {
                //     goToStart();
                // }
                break;
            case LOSE:
                waitForVBlank();
                drawLose();
                break;
            case WIN:
                waitForVBlank();
                drawWin();
                break;
        }
        time++;
    }
    return 0;
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;
    goToStart();
}

void updateGame() {
    updateBallPosition();
    updatePlayerBox();
}

void drawGame() {
    if (erase) {
        drawRect(50, 18, 240, 160, BLACK);
        boundingBox();
        erase = false;
    }
    drawBouncingBall();
    drawPlayerBox();
}

void drawLose() {
    drawString(35, 80, "YOU LOSE! TRY AGAIN NEXT TIME", WHITE);
}

void goToGame() {
    fillScreen(BLACK);
    drawLives();
    boundingBox();
    state = GAME;
}
void goToLose() {
    fillScreen(BLACK);
    state = LOSE;
    drawLose();
}

void goToStart() {
    fillScreen(BLACK);
    state = START;
    drawStart();
}

void drawStart() {
    drawString(30, 30, "START", WHITE);
}
void goToInfo() {
    fillScreen(BLACK);
    state = INFO;
    drawInfo();
}

void drawInfo() {
    drawString(30, 30, "INFO", WHITE);
}

void goToWin() {
    fillScreen(BLACK);
    state = WIN;
    drawWin();
}

void drawWin() {
    drawString(15, 30, "CONGRATULATIONS! YOU'VE WON JEZZ BALL", WHITE);
}
// void resetGame() {

// }