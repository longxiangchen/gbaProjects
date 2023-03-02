#include <stdlib.h>
#include <stdio.h>
#include "gba.h"
#include "mode4.h"
#include "start.h"
#include "game.h"

// imports
PLAYER player;
ESCAPE escape;

// prototypes
void initialize();

// state prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// random prototype
void srand();

// text buffer
char buffer[41];

// states
enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// buttons 
unsigned short buttons;
unsigned short oldButtons;

// random seed
int rSeed;

int main()
{
    initialize();

    while (1)
    {
        // update button variables
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        // state machine
        switch (state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}

// sets up GBA
void initialize()
{
    REG_DISPCTL = MODE(4) | BG2_ENABLE | DISP_BACKBUFFER;

    buttons = REG_BUTTONS;
    oldButtons = 0;

    goToStart();
}

// sets up the start state
void goToStart() {
    // TODO 3.4: call DMANow to load in startPal
    DMANow(3, startPal, PALETTE, 256);

    // UNCOMMENT 3.5
    drawFullscreenImage4(startBitmap);

    // TODO 2.1: wait for vBlank and flip the page
    // note: you don't need to reload the palette
    waitForVBlank();    
    flipPage();

    state = START;

    // begin the seed randomization
    rSeed = 0;
}

// runs every frame of the start state
void start() {
    rSeed++;
    // locking frame rate to 60fps
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(rSeed); 
        goToGame();
        initGame();
    }
}

// sets up the game state
void goToGame() {
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();

    // update the score
    drawString4(10, 1, "time elapsed: ", GOLDID);
    sprintf(buffer, "%d", score);
    drawString4(90, 1, buffer, GOLDID);

    waitForVBlank();
    flipPage();


    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    // win and lose conditions

    if (!player.lives) {
        goToLose();
    }

    if (collision(player.x, player.y, player.width, player.height, escape.x, escape.y, escape.width, escape.height)) {
        goToWin();
    }
    if (player.dodge) {
        player.dodgeTimer++;
        if (player.dodgeTimer == 50) {
            player.dodgeTimer = 0;
            player.dodge = 0;
            player.dodgeCooldown = 60 * 5;
        }
    }
    player.dodgeCooldown--;
}

// Sets up the pause state
void goToPause() {
    fillScreen4(BROWNID);
    drawString4(136, 8, "got too stressed?", PINKID);
    drawString4(130, 18, "you're paused now!", PINKID); 

    // TODO 2.2: wait for vBlank and flip the page
    waitForVBlank();
    flipPage();


    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {
    if (score < bestTime) {
        bestTime = score;
    }
    fillScreen4(MAROONID);
    drawString4(100, 8, "YOU WON!", GOLDID);
    
    drawString4(30, 18, "PRESS START TO RESTART THE GAME", GOLDID);

    drawString4(56, 28, "YOUR TIME: ", PINKID);
    drawString4(56, 38, "BEST TIME: ", PINKID);
    sprintf(buffer, "%d seconds", score);
    drawString4(127, 28, buffer, PINKID);
    sprintf(buffer, (bestTime != 10000) ? "%d seconds" : "NIL", bestTime);
    drawString4(127, 38, buffer, PINKID);
    // TODO 2.3: wait for vBlank and flip the page
    waitForVBlank();
    flipPage();


    state = WIN;
}

// Runs every frame of the win state
void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

// Sets up the lose state
void goToLose() {
    score = 0;
    fillScreen4(SALMONID);
    drawString4(90, 8, "GAME OVER", PINKID);
    drawString4(80, 130, "press start to try again", PINKID);
    drawString4(56, 18, "YOUR TIME: ", PINKID);
    drawString4(56, 28, "BEST TIME: ", PINKID);
    sprintf(buffer, (score == 0) ? "you died" : "%d seconds", score);
    drawString4(126, 18, buffer, PINKID);
    sprintf(buffer, (bestTime != 10000) ? "%d seconds" : "NIL", bestTime);
    drawString4(126, 28, buffer, PINKID);

    // TODO 2.4: wait for vBlank and flip the page
    waitForVBlank();
    flipPage();

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}