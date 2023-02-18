#include "gba.h"

extern int lives;
int liveX = 0;

void drawLives() {
    drawString(0, 10, "LIVES:", WHITE);
    for (int i = 0; i < lives; i++) {
        drawChar(liveX, 25, 'X', WHITE);
        liveX += 5;
    }
}