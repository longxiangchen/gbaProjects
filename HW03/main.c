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
int highScore;

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
            case LOSE:
                lose();
                break;
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
    player.health = 1;
}

void start() {
    rSeed++;

    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(rSeed);
        initGame();
        goToGame();
    }

    REG_SND2CNT = DMG_ENV_VOL(0) | DMG_DIRECTION_DECR | DMG_STEP_TIME(0) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G6 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND1SWEEP = DMG_SWEEP_NUM(0) | DMG_SWEEP_STEPTIME(0) | DMG_SWEEP_DOWN;
}

void game() {
    
    updateGame();

    sprintf(buffer, "%d", score);
    
    mgba_open();
    waitForVBlank();
    drawRect(210, 1, 50, 8, BLACK);
    drawString(210, 1, buffer, WHITE);
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    if (player.health < 1) {
        goToLose();
    }
    REG_SND2CNT = DMG_ENV_VOL(0) | DMG_DIRECTION_DECR | DMG_STEP_TIME(0) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G6 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND1SWEEP = DMG_SWEEP_NUM(0) | DMG_SWEEP_STEPTIME(0) | DMG_SWEEP_DOWN;
}

void goToGame() {
    fillScreen(BLACK);
    drawString(175, 1, "SCORE:", WHITE);
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
        goToLose();
    }
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_DIRECTION_DECR | DMG_STEP_TIME(0) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G6 | SND_RESET;
    REG_SND1SWEEP = DMG_SWEEP_NUM(7) | DMG_SWEEP_STEPTIME(0) | DMG_SWEEP_DOWN;
}

void goToLose() {
    fillScreen(BLACK);
    drawString(136, 8, "GAME OVER", ROGUE);
    drawString(130, 18, "YOUR SCORE: ", ROGUE);
    drawString(130, 28, "HIGH SCORE: ", ROGUE);
    sprintf(buffer, "%d", score);
    drawString(195, 18, buffer, WHITE);
    sprintf(buffer, "%d", highScore);
    drawString(195, 28, buffer, WHITE);
    state = LOSE;
}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
    REG_SND2CNT = DMG_ENV_VOL(0) | DMG_DIRECTION_DECR | DMG_STEP_TIME(0) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G6 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND1SWEEP = DMG_SWEEP_NUM(0) | DMG_SWEEP_STEPTIME(0) | DMG_SWEEP_DOWN;
}