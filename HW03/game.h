// structs

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int xVelocity;
    int width;
    int height;
    unsigned short color;
} PLAYER;

typedef struct {
    int x;
    int y;
    int yVelocity;
    int active;
    int height;
    int width;
    unsigned short color;
} BULLET;

// constants
#define BCOUNT 10

// function prototypes for bullet
void initBullets();
void updateBullet(BULLET* b);
void drawBullet(BULLET* b);

// variables
extern PLAYER player;
extern BULLET bullet;
extern BULLET bullets[BCOUNT];
extern int score;

// function prototypes
// init
void initGame();
void initPlayer();

