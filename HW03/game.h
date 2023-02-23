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


typedef struct {
    int x;
    int y;
    int yVelocity;
    int active;
    int height;
    int width;
    int type;
    unsigned short color;
    int erased;
} OBSTACLE;

// constants
#define BCOUNT 10
#define OCOUNT 10
// function prototypes for bullet
void initBullets();
void updateBullet(BULLET* b);
void drawBullet(BULLET* b);

// function prototypes for OBSTACLES
void initObstacles();
void updateObstacle(OBSTACLE* o);
void drawObstacle(OBSTACLE* o);
// variables
extern PLAYER player;
extern BULLET bullet;
extern BULLET bullets[BCOUNT];
extern OBSTACLE obstacles[OCOUNT];
extern int score;

// function prototypes
// init
void initGame();
void initPlayer();
void updatePlayer();
