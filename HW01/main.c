#include "gba.h"
#include "print.h"
#include <stdbool.h>

unsigned short oldButtons;
unsigned short buttons;
// prototypes

void initialize();
void update();
void draw();
void drawDiglett();

int x, y, dFrame, skipFrames, frameLim;
bool isLooping = false;
bool toggleDirection = true;

int main() {
    mgba_open();
    mgba_printf("Debugging");

    initialize();
    dFrame = 1;
    while(1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;

        update();
        if (isLooping) {
            drawRect(x, y, 100, 50, WHITE);
            if (skipFrames == frameLim) {
                if (toggleDirection) {
                    if (dFrame == 9) {
                        dFrame = 1;
                    } else {
                    dFrame++;
                    }
                } else {
                    if (dFrame == 1) {
                        dFrame = 9;
                    } else {
                        dFrame--;
                    }
                }
                skipFrames = 0;
            }
            skipFrames++;
        }
        waitForVBlank();
        draw();
    }
}

void initialize() {
    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    oldButtons = 0;
    buttons = 0;
    frameLim = 30;
    fillScreen(WHITE);
}

void update() {
    // next frame
    if (BUTTON_PRESSED(BUTTON_A)) {
        drawRect(x, y, 100, 50, WHITE);
        mgba_printf("next frame");
        if (dFrame == 9) {
            dFrame = 1;
        } else {
            dFrame++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        drawRect(x, y, 100, 50, WHITE);
        mgba_printf("previous frame");
        if (dFrame == 1) {
            dFrame = 9;
        } else {
            dFrame--;
        }
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        drawRect(x, y, 100, 50, WHITE);
        dFrame = 9;
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        drawRect(x, y, 100, 50, WHITE);
        dFrame = 1;
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        toggleDirection = !toggleDirection;
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        mgba_printf("STARTED");
        isLooping = !isLooping;
    }

    if (BUTTON_PRESSED(BUTTON_UP)) {
        if (frameLim > 10) {
            frameLim -= 5;
        }
    }

    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        if (frameLim < 60) {
            frameLim += 5;
        }
    }
}

void draw() {
    int x = 90;
    int y = 90;
    drawDiglett(x, y, 1);
    drawDiglett(x + 30, y, 2);
    drawDiglett(x + 60, y, 3);
    drawDiglett(x + 90, y, 4);
    drawDiglett(x, y + 50, 5);
    drawDiglett(x + 30, y + 50, 6);
    drawDiglett(x + 60, y + 50, 8);

    drawDiglett(30, 30, dFrame);
}

void drawExclamation(int x, int y) {
    drawRect(x + 12, y + 4, 6, 1, BLACK);
    drawRect(x + 11, y + 5, 1, 1, BLACK);
    drawRect(x + 10, y + 6, 1, 4, BLACK);
    drawRect(x + 18, y + 5, 1, 1, BLACK);
    drawRect(x + 19, y + 6, 1, 4, BLACK);
    drawRect(x+11, y+10, 1, 1, BLACK);
    drawRect(x+12, y+11, 2, 1, BLACK);
    drawRect(x+13, y+12, 1, 1, BLACK);
    drawRect(x+14, y+11, 1, 1, BLACK);
    drawRect(x+15, y+10, 4, 1, BLACK);  
    // exclamation
    drawRect(x + 14, y + 5, 1, 2, RED);
    drawRect(x +14, y+8, 1, 1, RED);
}
void drawDiglett(int x, int y, int frame) {
    if (frame == 3) {
        drawExclamation(x, y);
    } else if (frame == 4) {
        drawExclamation(x, y - 3);
        // head
        drawRect(x + 13, y + 15, 6, 1, BROWN);
        drawRect(x + 11, y + 16, 9, 1, BROWN);
    } else if (frame == 5) {
        // chatbox!
        drawExclamation(x, y - 5);
        // body/head
        drawRect(x + 13, y + 13, 6, 1, BROWN);
	    drawRect(x + 11, y + 14, 9, 1, BROWN);
        drawRect(x + 9, y + 15, 14, 1, BROWN);
        drawRect(x + 9, y + 15, 13, 1, BROWN);
        drawRect(x + 8, y + 16, 16, 1, BROWN);
    } else if (frame == 6) {
        drawExclamation(x, y - 7);

        // body
        drawRect(x + 13, y + 9, 6, 1, BROWN);
        drawRect(x + 11, y + 10, 9, 1, BROWN);
        drawRect(x + 10, y + 11, 12, 1, BROWN);
        drawRect(x + 9, y + 12, 14, 1, BROWN);
        drawRect(x + 8, y + 13, 16, 6, BROWN);
        // eyes
        drawRect(x + 15, y + 13, 1, 1, WHITE);
        drawRect(x + 12, y + 13, 1, 1, WHITE);
        drawRect(x + 15, y + 14, 1, 2, BLACK);
        drawRect(x + 12, y + 14, 1, 2, BLACK);
    } else if (frame == 7) {
        drawExclamation(x, y - 8);
        // body
        drawRect(x + 13, y + 7, 6, 1, BROWN);
        drawRect(x + 11, y + 8, 9, 1, BROWN);
        drawRect(x + 10, y + 9, 12, 1, BROWN);
        drawRect(x + 9, y + 10, 14, 1, BROWN);
        drawRect(x + 8, y + 11, 16, 8, BROWN);
        // eyes
        drawRect(x + 15, y + 11, 1, 1, WHITE);
        drawRect(x + 12, y + 11, 1, 1, WHITE);
        drawRect(x + 15, y + 12, 1, 2, BLACK);
        drawRect(x + 12, y + 12, 1, 2, BLACK);
    } else if (frame == 8) {
        drawExclamation(x, y - 10);
        // body
        drawRect(x + 13, y + 4, 6, 1, BROWN);
        drawRect(x + 11, y + 5, 9, 1, BROWN);
        drawRect(x + 10, y + 6, 12, 1, BROWN);
        drawRect(x + 9, y + 7, 14, 1, BROWN);
        drawRect(x + 8, y + 8, 16, 11, BROWN);
        // eyes
        drawRect(x + 15, y + 8, 1, 1, WHITE);
        drawRect(x + 12, y + 8, 1, 1, WHITE);
        drawRect(x + 15, y + 9, 1, 2, BLACK);
        drawRect(x + 12, y + 9, 1, 2, BLACK);

        // nose
        drawRect(x + 10, y + 14, 6, 3, HOTPINK);

    } else if (frame == 9) {
        drawExclamation(x, y - 16);
        drawRect(x + 13, y, 6, 1, BROWN);
        drawRect(x + 11, y + 1, 9, 1, BROWN);
        drawRect(x + 10, y + 2, 12, 1, BROWN);
        drawRect(x + 9, y + 3, 14, 1, BROWN);
        drawRect(x + 8, y + 4, 16, 15, BROWN);

        // eyes
		drawRect(x + 15, y + 4, 1, 1, WHITE);
		drawRect(x + 12, y + 4, 1, 1, WHITE);
		drawRect(x + 15, y + 5, 1, 2, BLACK);
		drawRect(x + 12, y + 5, 1, 2, BLACK);

		// nose
		drawRect(x + 10, y + 10, 6, 3, HOTPINK);
		drawRect(x + 4, y + 17, 24, 2, GRAY);
    }
    drawRect(x + 4, y + 17, 24, 2, GRAY);
}