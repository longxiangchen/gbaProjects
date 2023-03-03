#include "gba.h"
#include "game.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "sonic.h"
#include "dodge.h"
#include "eggman.h"
#include "sound.h"

PLAYER player;
VILLAIN eggman;
BULLET bullets[BCOUNT];
ESCAPE escape;

//imports
int score;
int bulletDelayCounter;
int bulletDelay;
int bestTime = 10000;
// native variable
int count;
int frames;
volatile void *playerPal = sonicPal;
unsigned short *playerBitmap = sonicBitmap;

void initGame() {
    bulletDelay = 30;
    frames = 0;
    initEscape();
    initPlayer();
    initBullets();
    initVillain();
    DMANow(3, sonicPal, PALETTE, 256);  
    score = NULL;
    bulletDelayCounter = 0;
    unsigned short colors[NUMCOLORS] = {BLACK, GREY, MAROON, GAMEBG, GOLD, BROWN, SALMON, PINK};
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }
}

void initPlayer() {
    player.y = 60;
    player.x = 0;
    player.dy = 0;
    player.dx = 0;
    player.width = 28;
    player.height = 24;
    player.lives = 3;
    player.dodge = 0;
    player.dodgeTimer = 0;
    player.dodgeCooldown = 0; // seconds
}

void initBullets() {
    for (int i = 0; i < BCOUNT; i++) {
        bullets[i].dx = 0;
        bullets[i].dy = 0;
        bullets[i].width = 12;
        bullets[i].height = 2;
        bullets[i].active = 0;
        bullets[i].color = GOLDID;
    }
}

void initVillain() {
    eggman.y = 100;
    eggman.x = 195;
    eggman.dy = 0;
    eggman.height = 28;
    eggman.width = 24;
    int dir = rand()% 2 + 1;
    if (dir == 1) {
        eggman.dy = -2;
    } else {
        eggman.dy = 2;
    }
}

void initEscape() {
    escape.x = 223;
    escape.y = 0;
    escape.width = 10;
    escape.height = 160;
    escape.color = SALMONID;
}

void drawEscape() {
    drawRect4(escape.x, escape.y, escape.width, escape.height, escape.color);
}

void updateGame() {
    bulletDelayCounter++;
    frames++;
    if (frames >= 60) {
        frames = 0;
        score++;
    }
    updatePlayer();
    updateVillain();
    // update bullets
    if (bulletDelayCounter >= bulletDelay) {
        newBullet();
        bulletDelayCounter = 0;
    }

    for (int i = 0; i < BCOUNT; i++) {
        updateBullet(&bullets[i]);
    }
}

void updatePlayer() {
    if (!player.dodge) {
        playerPal = sonicPal;
        playerBitmap = sonicBitmap;
    } else {
        playerBitmap = dodgeBitmap;
    }
    if (player.y < 40 || player.x + player.width > 238 || player.y + player.height > 157 || player.x < 2) {
        player.dy = 0;
        player.dx = 0;
    }
    if (collision(player.x, player.y, player.width, player.height, eggman.x, eggman.y, eggman.width, eggman.height)) {
        player.lives--;
        player.x = 10;
        player.y = 80;
    }
    if ((BUTTON_PRESSED(BUTTON_RSHOULDER) || BUTTON_PRESSED(BUTTON_LSHOULDER)) && player.dodgeCooldown <= 0) {
        player.dodge = 1;
    }
    if (BUTTON_HELD(BUTTON_UP) && player.y > 10) {
        player.dy = -2;
    } else if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < 155) {
        player.dy = 2;
    } else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < 235) {
        player.dx = 2;
    } else if (BUTTON_HELD(BUTTON_LEFT) && player.x > 4) {
        player.dx = -2;
    } else {
        player.dx = 0;
        player.dy = 0;
    }

    player.x += player.dx;
    player.y += player.dy;
}

void updateVillain() {
    // make the eggman go up and down
    int dirChange = rand()% 50 + 1;
    if (eggman.y + eggman.height > 150) {
        // eggman.dy = -3;
        eggman.dy = (dirChange == 10) ? 3 : -3;
    } else if (eggman.y < 10) {
        // eggman.dy = 3;
        eggman.dy = (dirChange == 10) ? -3 : 3;
    }

    if (dirChange == 5) {
        eggman.dy = -eggman.dy;
    }

    eggman.y += eggman.dy;
}

void drawGame() {
    fillScreen4(GAMEBGID);
    drawEscape();
    drawPlayer();
    drawVillain();
    for (int i = 0; i < BCOUNT; i++) {
        drawBullet(&bullets[i]);
    }
}

void drawPlayer() {
    drawImage4(player.x, player.y, player.width, player.height, playerBitmap);
}

void drawVillain() {
    drawRect4(eggman.x, eggman.y, eggman.width, eggman.height, GOLDID);
}

void updateBullet(BULLET *b) {
    if (b->active) {
        if (!player.dodge && collision(b->x, b->y, b->width, b->height, player.x, player.y, player.width, player.height)) {
            REG_SOUNDCNT_H = DMG_MASTER_VOL(2);
            REG_SND2CNT = DMG_ENV_VOL(5) | DMG_DIRECTION_DECR | DMG_STEP_TIME(7) | DMG_DUTY_50;
            REG_SND2FREQ = NOTE_FS4 | SND_RESET | DMG_FREQ_TIMED;
            REG_SND1SWEEP = DMG_SWEEP_NUM(7) | DMG_SWEEP_STEPTIME(7) | DMG_SWEEP_DOWN;
            player.lives--;
            player.x = 10;
            player.y = 80;
            b->active = 0;
            initBullets();
        }
        if (b->x < 30) {
            b->active = 0;
        }
    }
    b->x += b->dx;
}

void drawBullet(BULLET *b) {
    if (b->active) {
        drawRect4(b->x, b->y, b->width, b->height, b->color);
    }
}

void newBullet() {
    int i = 0;
    int found = 0;

    while (i < BCOUNT && !found) {
        if (!bullets[i].active) {
            bullets[i].x = eggman.x;
            bullets[i].y = eggman.y + (eggman.height / 2);
            bullets[i].dx = -1;
            bullets[i].active = 1;
            found = 1;
        }
        i++;
    }

    REG_SOUNDCNT_H = DMG_MASTER_VOL(4);
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_DIRECTION_DECR | DMG_STEP_TIME(7) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G7 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND1SWEEP = DMG_SWEEP_NUM(7) | DMG_SWEEP_STEPTIME(7) | DMG_SWEEP_DOWN;
}