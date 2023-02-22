#include "gba.h"
#include "game.h"
#include "sound.h"
#include <stdlib.h>

PLAYER player;
BULLET bullets[BCOUNT];
// score & statuses
int score;
int spawned;
int poweredUp;

// initializing game
void initGame() {
    // init score
    score = 0;

    // init structs
    initPlayer();
    initBullets();
}

void initPlayer() {
    player.y = 154;
    player.x = 117;
    player.oldx = player.x;
    player.oldy = player.y;
    player.xVelocity = 0;
    player.height = 10;
    player.width = 10;
    player.color = WHITE;
}

void initBullets() {
    for (int i = 0; i < BCOUNT; i++) {
        bullets[i].active = 0;
        bullets[i].x = player.x;
        bullets[i].y = player.y;
        bullets[i].yVelocity = 0;
        bullets[i].height = 10;
        bullets[i].width = 10;
        bullets[i].color = RED;
    }
}

void updateGame() {
    updatePlayer();
    // for (int i = 0; i < BCOUNT; i++) {
    //     updateBullet(&bullets[i]);
    // }

    // update obstacles after we've finished implementing bullets
}

void updatePlayer() {
    if (BUTTON_HELD(BUTTON_LEFT) && player.x - 1 > 60) {
        player.xVelocity = -4;
    }
    else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + 1 < 180) {
        player.xVelocity = 4;
    }
    else {
        player.xVelocity = 0;
    }

    player.oldx = player.x;
    player.x += player.xVelocity;
}

void drawGame() {
    drawPlayer();
    // for (int i = 0; i < BCOUNT; i++) {
    //     drawBullet(&bullets[i]);
    // }
}