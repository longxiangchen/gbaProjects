#include "gba.h"
#include "font.h"

// Pointer to the start of video memory
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

// Draws a rectangle in mode 3
void drawRect(int x, int y, int width, int height, volatile unsigned short color) {
    //TODO 3.2: Change this to use DMA
    for (int i = 0; i < height; i++) {
        DMANow(3, &color, &videoBuffer[OFFSET(x, y + i, 240)], DMA_SOURCE_FIXED | DMA_DESTINATION_INCREMENT | (width));
    }
    
}

// Fills the screen in mode 3
void fillScreen(volatile unsigned short color) {
    //TODO 3.1: Change this to use DMA
    DMANow(3, &color, videoBuffer, DMA_SOURCE_FIXED | DMA_DESTINATION_INCREMENT | (240 * 160));

}

// Checks for collision between two rectangles
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2) {
    return y1 < y2 + height2 && y1 + height1 > y2 && x1 < x2 + width2 && x1 + width1 > x2;
}

// Waits until drawing pixel 0 of line 160
void waitForVBlank() {
    while (REG_VCOUNT >= 160);
    while (REG_VCOUNT < 160);
}

// Draws the specified character at the specified location in Mode 3
void drawChar(int x, int y, char ch, unsigned short color) {
    for (int c = 0; c < 6; c++) {
        for (int r = 0; r < 8; r++) {
            if (fontdata_6x8[(48 * ch + c + 6 * r)]) setPixel(x + c, y + r, color);
        }
    }
}

// Draws the specified string at the specified location in Mode 3
void drawString(int x, int y, char *str, unsigned short color) {
    while (*str) {
        drawChar(x, y, *str, color);
        str++;
        x += 6;
    }
}

// Pointer to the start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// Immediately begins a DMA transfer using parameters
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {
    // TODO 3.0: Complete this function
    // Remember to write this function to work with any passed in channel (0, 1, 2, 3).

    // Clear cnt in the specified DMA channel
    dma[channel].cnt = 0;

    // Set the src of the specified dma channel to the passed in src
    dma[channel].src = src;

    // Set the dst of the specified dma channel to the passed in dst
    dma[channel].dst = dst;

    // Set the cnt of the specified dma channel to the passed in cnt and turn the dma channel on
    dma[channel].cnt = DMA_ON | cnt;
}