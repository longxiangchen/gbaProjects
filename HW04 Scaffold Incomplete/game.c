#include "gba.h"
#include "game.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "sonic.h"

PLAYER player;
VILLAIN eggman;
BULLET bullets[BCOUNT];
ESCAPE escape;

//imports
int score;
int time;
int highScore;
// native variable
int count;

void initGame() {
    initEscape();
    initPlayer();
    initBullets();
    initVillain();
    unsigned short colors[NUMCOLORS] = {BLACK, GREY, MAROON, GAMEBG, GOLD, BROWN, SALMON, PINK};
    DMANow(3, sonicPal, PALETTE, 256);  
    score = 0;
    time = 0;
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }
}

void initPlayer() {
    player.y = 100;
    player.x = 10;
    player.dy = 0;
    player.dx = 0;
    player.height = 12;
    player.width = 16;
    player.lives = 3;
    player.dodge = 0;
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
    int randEscapeY = rand()% 150 + 1;
    escape.x = 220;
    escape.y = randEscapeY;
    escape.width = 10;
    escape.height = 10;
    escape.color = SALMONID;
}

void drawEscape() {
    drawRect4(escape.x, escape.y, escape.width, escape.height, escape.color);
}
void updateGame() {
    time++;
    score++;
    updatePlayer();
    updateVillain();
    // update bullets
    if (time >= 12) {
        newBullet();
        time = 0;
        count++;
    }

    for (int i = 0; i < BCOUNT; i++) {
        updateBullet(&bullets[i]);
    }

    if (score > highScore) {
        highScore = score;
    }
}

void updatePlayer() {
    if (player.y < 4 || player.x + player.width > 238 || player.y + player.height > 157 || player.x < 2) {
        player.dy = 0;
        player.dx = 0;
    }
    if (collision(player.x, player.y, player.width, player.height, eggman.x, eggman.y, eggman.width, eggman.height)) {
        player.lives--;
        player.x = 10;
        player.y = 80;
    }
    if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        player.dodge = 1;
    }
    if (BUTTON_HELD(BUTTON_UP) && player.y > 4) {
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
    drawImage4(player.x, player.y, player.width, player.height, sonicBitmap);
}

void drawVillain() {
    drawRect4(eggman.x, eggman.y, eggman.width, eggman.height, GOLDID);
}

void updateBullet(BULLET *b) {
    if (b->active) {
        if (!player.dodge && collision(b->x, b->y, b->width, b->height, player.x, player.y, player.width, player.height)) {
            player.lives--;
            player.x = 10;
            player.y = 80;
            b->active = 0;
        }
        if (b->x < 10) {
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
            bullets[i].dx = -2;
            bullets[i].active = 1;
            found = 1;
        }
        i++;
    }
}