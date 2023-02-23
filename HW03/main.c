#include <stdlib.h>
#include <stdio.h>
#include "font.h"
#include "gba.h"
#include "game.h"
#include "sound.h"

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

// buttons
unsigned short oldButtons;
unsigned short buttons;

// states
enum {
    START,
    GAME,
    PAUSE,
    LOSE
};

int state;
int rSeed;
int score;

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        switch(state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            // case LOSE:
            //     lose();
            //     break;
        }
    }
}

void initialize()
{
    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    // enabling + setting up sound
    // TODO 4.0: enable sounds in the sound on/off register
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) |
                   DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT |
                   DMG_SND1_RIGHT |
                   DMG_SND2_LEFT |
                   DMG_SND2_RIGHT |
                   DMG_SND3_LEFT |
                   DMG_SND3_RIGHT |
                   DMG_SND4_LEFT |
                   DMG_SND4_RIGHT;
    REG_SOUNDCNT_H = DMG_MASTER_VOL(2);

    buttons = REG_BUTTONS;
    oldButtons = 0;

    goToStart();
}

void goToStart() {
    fillScreen(BLACK);

    // spells out GAME BOY on the start screen in different colors
    char letters[7] = {'G', 'B', 'A', ' ', 'R', 'U', 'N'};
    unsigned short colors[7] = {ROGUE, VIORED, HOTPINK, LAVPINK, PORTAGE, TURQUOISE, PERSIAN};
    int col = 84;
    int spacing = 12;
    for(int i = 0; i < 7; i++){
        drawChar(col + (i * spacing), 70, letters[i], colors[i]);
    }

    drawString(84, 96, "spring 2023", OFFWHITE);

    state = START;
    // begin the seed randomization
    rSeed = 0;
}

void start() {
    rSeed++;

    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(rSeed);
        initGame();
        goToGame();
    }
}

void game() {
    updateGame();

    mgba_open();
    mgba_printf("game");

    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;
}

void goToPause() {
    fillScreen(BLACK);
    drawString(136, 8, "GAME IS PAUSED", ROGUE);
    drawString(130, 18, "CURRENT SCORE: ", ROGUE);
    waitForVBlank();
    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

