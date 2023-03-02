# 1 "mode4.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mode4.c"
# 1 "mode4.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 37 "gba.h"
void waitForVBlank();
# 63 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 79 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;
extern DMA *dma;
# 111 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 5 "mode4.h" 2





void flipPage();
void setPixel4(int x, int y, unsigned char colorIndex);
void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int x, int y, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 2 "mode4.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 3 "mode4.c" 2


void setPixel4(int x, int y, unsigned char colorIndex) {
    int offset = (x + y*240) >> 1;
    unsigned short originalShort = videoBuffer[offset];
    if (x & 1){
        videoBuffer[offset] = colorIndex << 8 | (originalShort & 0x00FF);
    } else {
        videoBuffer[offset] = colorIndex | (originalShort & 0xFF00);
    }
}


void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex) {
    volatile unsigned short pixelData = colorIndex | (colorIndex << 8);
    for(int i = 0; i < height; i++) {
        if(!(x & 1)) {
            if(!(width & 1)) {
                DMANow(3, &pixelData, &videoBuffer[((y + i) * (240) + (x))/2], (2 << 23) | width/2);
            } else if(width%2!=0) {
                if (width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[((y + i) * (240) + (x))/2], (2 << 23) | width/2);
                }
                setPixel4(x + width - 1, y + i, colorIndex);
            }
        } else if (x & 1) {
            if(width & 1) {
                setPixel4(x, y + i, colorIndex);
                if(width > 1) {
                    DMANow(3, &pixelData, &videoBuffer[((y + i) * (240) + (x + 1))/2], (2 << 23) | width/2);
                }
            } else if (!(width & 1)) {
                setPixel4(x, y + i, colorIndex);
                if (width > 2) {
                    DMANow(3, &pixelData, &videoBuffer[((y + i) * (240) + (x + 1))/2], (2 << 23) | (width/2 - 1));
                }
                setPixel4(x + width - 1, y + i, colorIndex);
            }
        }
    }
}


void fillScreen4(volatile unsigned char colorIndex) {
    volatile unsigned int color = colorIndex << 24 | colorIndex << 16 | colorIndex << 8 | colorIndex;
    dma[3].cnt = 0;
    dma[3].src = &color;
    dma[3].dst = videoBuffer;
    dma[3].cnt = 1 << 31 | 1 << 24 | 1 << 26 | (38400 / 4);
}


void drawImage4(int x, int y, int width, int height, const unsigned short *image) {
    for(int i = 0; i < height; i++) {
        DMANow(3, &image[((i) * (width/2) + (0))], &videoBuffer[((y + i) * (240) + (x))/2], width/2);
    }
}


void drawFullscreenImage4(const unsigned short *image) {
    DMANow(3, image, videoBuffer, 240 * 160 / 2);
}


void flipPage() {
    if ((*(volatile unsigned short *)0x4000000) & (1 << 4)) {
        videoBuffer = ((unsigned short *)0x600A000);
    } else {
        videoBuffer = ((unsigned short *)0x6000000);
    }
    (*(volatile unsigned short *)0x4000000) ^= (1 << 4);
}


void drawChar4(int x, int y, char ch, unsigned short color) {
    for (int c = 0; c < 6; c++) {
        for (int r = 0; r < 8; r++) {
            if (fontdata_6x8[(48 * ch + c + 6 * r)]) setPixel4(x + c, y + r, color);
        }
    }
}


void drawString4(int x, int y, char *str, unsigned short color) {
    while (*str) {
        drawChar4(x, y, *str, color);
        str++;
        x += 6;
    }
}
