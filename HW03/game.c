#include "gba.h"
#include "game.h"
#include "sound.h"
#include <stdlib.h>

PLAYER player;
OBSTACLE obstacles[OCOUNT];
int frames;

// score & statuses
int score;
int spawned;
int poweredUp;
int poweredDown;
int time;
unsigned short healthIndicator; 
int spawnDelay;
int count;
int highScore;
// initializing game
void initGame() {
    // init score
    count = 0;
    spawnDelay = 50;
    score = 0;
    time = 0;
    poweredDown = 0;
    poweredUp = 0;
    frames = 0;
    // init structs
    initPlayer();
    initObstacles();
}

void initPlayer() {
    player.y = 145;
    player.x = 110;
    player.oldx = player.x;
    player.oldy = player.y;
    player.xVelocity = 0;
    player.yVelocity = 0;
    player.height = 10;
    player.width = 15;
    player.color = BLUE;
    player.health = 2;
    healthIndicator = BLUE;
}

void initObstacles() {
    for (int i = 0; i < OCOUNT; i++) {
        obstacles[i].y = 30;
        obstacles[i].x = 100;
        obstacles[i].oldX = obstacles[i].x;
        obstacles[i].oldY = obstacles[i].y;
        obstacles[i].width = 25;
        obstacles[i].height = 10;
        obstacles[i].yVelocity = 0;
        obstacles[i].active = 0;
        obstacles[i].color = WHITE;
    }
}

void updateGame() {
    time++;
    frames++;
    if (frames >= 60) {
        frames = 0;
        score++;
    }
    updatePlayer();

    for (int i = 0; i < OCOUNT; i++) {
        updateObstacle(&obstacles[i]);
    }
    if (time >= spawnDelay) {
        newObstacle();
        time = 0;
        count++;
    }
    if (count == 30 && spawnDelay > 20) {
        spawnDelay -= 2;
    }
    if (score > highScore) {
        highScore = score;
    }
}

void updatePlayer() {
    if (poweredUp) {
        if (BUTTON_HELD(BUTTON_UP)) {
            player.yVelocity = -2;
        } else if (BUTTON_HELD(BUTTON_DOWN)) {
            player.yVelocity = 2;
        } else {
            player.yVelocity = 0;
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT) && player.x - 2 > 70) {
        player.xVelocity = -2;
    }
    else if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width + 2 < 165) {
        player.xVelocity = 2;
    } 
    else {
        player.xVelocity = 0;
        player.color = healthIndicator;
    }
    if (!poweredDown) {
        if (BUTTON_HELD(BUTTON_A)) {
            player.color = RED;
        } else if (BUTTON_HELD(BUTTON_B)) {
            player.color = MAGENTA;
        }
    }
    player.oldx = player.x;
    player.x += player.xVelocity;
    player.oldy = player.y;
    player.y += player.yVelocity;
}

void drawGame() {
    for (int i = 0; i < 160; i +=20) {
        drawRect(80, i, 70, 2, BLACK);
    }
    drawRect(66, 30, 1, 130, WHITE);
    drawRect(68, 30, 1, 130, WHITE);
    
    drawRect(165, 30, 1, 130, WHITE);
    drawRect(167, 30, 1, 130, WHITE);

    drawRect(99, 30, 1, 130, WHITE);
    drawRect(101, 30, 1, 130, WHITE);

    drawRect(132, 30, 1, 130, WHITE);
    drawRect(134, 30, 1, 130, WHITE);
    for (int i = 0; i < OCOUNT; i++) {
        drawObstacle(&obstacles[i]);
    }
    drawRect(66, 27, 102, 3, WHITE);

    drawString(95, 10, "GBA RUN", BLUE);

    drawPlayer();
}

void drawPlayer() {
    drawRect(player.oldx, player.oldy, player.width, player.height, BLACK);
    drawRect(player.x, player.y, player.width, player.height, player.color);
}


void newObstacle() {
    int i = 0;
    int found = 0;
    mgba_printf("TRYING TO IMPLEMENT NEWOBSTACLE()");
    
    int obsType = rand()% 4 + 1;
    while (i < OCOUNT && !found) {
        mgba_printf("INSIDE OCOUNT WHILE LOOP");
        if (!obstacles[i].active) {
            obstacles[i].y = 30;
            obstacles[i].width = 25;
            int lane = rand()% 3 + 1;
            int powerUpChance = rand()% 10 + 1;
            switch(lane) {
                case 1:
                    obstacles[i].x = 66 + 5;
                    break;
                case 2:
                    obstacles[i].x = 66 + 33 + 5;
                    break;
                case 3:
                    obstacles[i].x = 137;
                    break;
            }
            if (powerUpChance == 10) {
                obstacles[i].color = YELLOW;
                obstacles[i].width = 5;
                obstacles[i].height = 5;
                mgba_printf("SPAWNING POWERUP");
                int randX = rand()% 80 + 70;
                obstacles[i].x = randX;
            } else {
                switch (obsType) {
                    case 1:
                        obstacles[i].color = MAGENTA;
                        mgba_printf("COLOR CHANGED TO MAGENTA");
                        break;
                    case 2:
                        obstacles[i].color = RED;
                        mgba_printf("COLOR CHANGED TO RED");
                        break;
                    case 3:
                        obstacles[i].height = 35;
                        obstacles[i].color = WHITE;
                        mgba_printf("COLOR CHANGED TO WHITE");
                        break;
                    case 4:
                        obstacles[i].color = GRAY;
                        obstacles[i].height = 10;
                        obstacles[i].width = 20;
                        int randX = rand()% 80 + 70;
                        obstacles[i].x = randX;
                        mgba_printf("COLOR CHANGED TO GRAY");
                        break;
                }
            }
            obstacles[i].active = 1;
            obstacles[i].yVelocity = 1;
            found = 1;

            mgba_printf("(x, y): (%d, %d)", obstacles[i].x, obstacles[i].y);
            mgba_printf("yVelocity: %d", obstacles[i].yVelocity);
        }
        i++;
    }
// CHANGE NOTE
    REG_SND2CNT = DMG_ENV_VOL(5) | DMG_DIRECTION_DECR | DMG_STEP_TIME(7) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_FS4 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND1SWEEP = DMG_SWEEP_NUM(7) | DMG_SWEEP_STEPTIME(7) | DMG_SWEEP_DOWN;
}

void updateObstacle(OBSTACLE* o) {
    if (o->active) {
        if (collision(o->x, o->y, o->width, o->height, player.x, player.y, player.width, player.height)) {
            if (o->color == YELLOW) {
                poweredUp = 1;
                poweredDown = 0;
                o->active = 0;
                o->erased = 0;
            } else if (o->color == GRAY) {
                poweredDown = 1;
                poweredUp = 0;
            } else if (o->color == player.color) {
                score += 10;
            } else if (o->color != player.color) {
                player.health--;
                healthIndicator = GRAY;
            }
        }
        if (o->y > 145 + player.height) {
            o->active = 0;
            o->erased = 0;
        }
        o->oldX = o->x;
        o->oldY = o->y;
        o->y += o->yVelocity;
    }
}

void drawObstacle(OBSTACLE* o) {
    if (o->active) {
        drawRect(o->oldX, o->oldY, o->width, o->height, BLACK);
        drawRect(o->x, o->y, o->width, o->height, o->color);
    } else if (!o->erased) {
        drawRect(o->oldX, o->oldY, o->width, o->height, BLACK);
        drawRect(o->x, o->y, o->width, o->height, BLACK);
        o->erased = 1;
    }
}