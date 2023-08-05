private int fps = 60;
private CloseTowers closeT;
private FarTowers farT;

public int[] ROYGBYV = { 
    color(255, 0, 0),
        color(255, 127, 0),
        color(255, 255, 0),
        color(0, 255, 0),
        color(0, 0, 255),
        color(75, 0, 130),
        color(148, 0, 211)
    };

// This happens once per run of program
void setup() {
    size(500, 500, P2D);
    textSize(50);
    background(0);
    frameRate(fps);
    closeT = new CloseTowers(10, 10);
    farT = new FarTowers(390, 390);
}

// THIS IS THE ONLY THING THATS CALLED after setup
// this happens every frame 
void draw() {
    // wipe background before each frame 
    background(0);
    
    closeT.drawBase();
    closeT.circleTest();
    
    farT.drawBase(); // LMFAO he said fart
    farT.hazardTowerTest(); 
    farT.addCenterCircle(50, color(0));
}

public class Projectile {
    
}

public class Enemy {
    
}