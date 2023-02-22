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
    int oldx;
    int oldy;
    int xVelocity;
    int yVelocity;
    int width;
    int height;
    unsigned short color;
} OBSTACLE;

typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int xVelocity;
    int yVelocity;
    int width;
    int height;
    unsigned short color;
} POWERUP;

// constants
#define OBSCOUNT 10

// variables
extern OBSTACLE obstacles[OBSCOUNT];
extern POWERUP powerup;
extern PLAYER player;
extern int score;
extern int poweredUp;

// function prototypes
void ignoreCollision();
void initGame();
void initPlayer();
void initObstacles();

void updateGame();
void updatePlayer();
void updateObstacles(OBSTACLE* obs);
void drawGame();
void drawPlayer();
void drawObstacles(OBSTACLE* obs);
void newObstacle();