#include "gba.h"
#include "game.h"
#include "sound.h"
#include <stdlib.h>

PLAYER player;
BULLET bullets[BCOUNT];
OBSTACLE obstacles[OCOUNT];
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
    player.y = 145;
    player.x = 110;
    player.oldx = player.x;
    player.oldy = player.y;
    player.xVelocity = 0;
    player.height = 10;
    player.width = 15;
    player.color = GRAY;
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
    if (BUTTON_HELD(BUTTON_LEFT) && player.x - 2 > 70) {
        player.xVelocity = -2;
    }
    else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 2 < 165) {
        player.xVelocity = 2;
    } 
    else {
        player.xVelocity = 0;
        player.color = GRAY;
    }

    if (BUTTON_HELD(BUTTON_A)) {
        player.color = RED;
    } else if (BUTTON_HELD(BUTTON_B)) {
        player.color = MAGENTA;
    }
    player.oldx = player.x;
    player.x += player.xVelocity;
}

void drawGame() {
    drawRect(66, 30, 1, 130, WHITE);
    drawRect(68, 30, 1, 130, WHITE);
    
    drawRect(165, 30, 1, 130, WHITE);
    drawRect(167, 30, 1, 130, WHITE);

    drawRect(99, 30, 1, 130, WHITE);
    drawRect(101, 30, 1, 130, WHITE);

    drawRect(132, 30, 1, 130, WHITE);
    drawRect(134, 30, 1, 130, WHITE);

    drawRect(66, 27, 102, 3, WHITE);

    drawString(95, 10, "GBA RUN", BLUE);
    int i = 40;
    while (i < 160) {
        drawRect(80, i, 70, 2, BLACK);
        i += 20;
    }
    
    drawPlayer();
    // for (int i = 0; i < BCOUNT; i++) {
    //     drawBullet(&bullets[i]);
    // }
    
}

void drawPlayer() {
    drawRect(player.oldx, player.oldy, player.width, player.height, BLACK);
    drawRect(player.x, player.y, player.width, player.height, player.color);
}

void initObstacles() {
    for (int i = 0; i < OCOUNT; i++) {
        int lane = rand()% 3 + 1;
        int randHeight = rand()% 50 + 10;
        int obsType = rand()% 3 + 1;
        obstacles[i].y = 0;
        obstacles[i].x = 0;
        obstacles[i].width = 25;
        obstacles[i].height = randHeight;
        obstacles[i].yVelocity = 0;
        obstacles[i].active = 0;
        obstacles[i].erased = 1;
        switch(lane) {
            case 1:
                obstacles[i].x = 66 + 5;
                break;
            case 2:
                obstacles[i].x = 66 + 33 + 5;
                break;
            case 3:
                obstacles[i].x = 135;
                break;
        }
    }
}



// void newObstacle() {
//     switch(obsType) {
//             case 1:
//                 obstacles[i].color = MAGENTA;
//                 break;
//             case 2:
//                 obstacles[i].color = RED;
//                 break;
//             case 3: 
//                 obstacles[i].color = WHITE;
//                 break;
//     }
// }

void updateObstacles(OBSTACLE* o) {
    if (o->active) {
        if (/* check collision for player */)
    }
}