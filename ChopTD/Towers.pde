// abstract class for adding tower classes
public class Towers {
    protected PVector[] baseP = new PVector[4]; // top left, top right, bottom left, bottom right
    protected PVector midpoint;
    protected int squareLength = 100;
    
    public Towers(int x, int y) {
        this.baseP[0] = new PVector(x, y);
        this.baseP[1] = new PVector((x + squareLength), y);
        this.baseP[2] = new PVector(x,(y + squareLength));
        this.baseP[3] = new PVector((x + squareLength),(y + squareLength));
        this.midpoint = new PVector(x + (squareLength / 2), y + (squareLength / 2));
    }
    
    // square for base of tower
    public void drawBase() {
        fill(255);
        square(baseP[0].x, baseP[0].y, squareLength);
    }
    
    // additional shapes for tower
    // center circle
    public void addCenterCircle(int size, color c) {
        fill(c);
        circle(midpoint.x, midpoint.y, size);
    }
    
    // triangle with input params
    public void addTriangle(PVector p1, PVector p2, PVector p3, color c) {
        fill(c);
        triangle(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y);
    }
}

public class CloseTowers extends Towers {
    // constructor
    public CloseTowers(int x, int y) {
        super(x, y);
    }
    
    public void circleTest() {
        this.addCenterCircle(80, ROYGBYV[6]);
        this.addCenterCircle(60, ROYGBYV[5]);
        this.addCenterCircle(40, ROYGBYV[4]);
        this.addCenterCircle(20, ROYGBYV[3]);
    }
    
    // stuff about how close-range towers work/attack
}

public class FarTowers extends Towers {
    // constructor
    public FarTowers(int x, int y) {
        super(x,y);
        }
    
    // testing method calls
    public void hazardTowerTest() {
        this.addTriangle(this.baseP[2], this.baseP[3], this.midpoint, ROYGBYV[2]);
        this.addTriangle(this.baseP[0], this.baseP[1], this.midpoint, ROYGBYV[2]);
        this.addTriangle(this.baseP[0], this.baseP[2], this.midpoint, ROYGBYV[5]);
        this.addTriangle(this.baseP[1], this.baseP[3], this.midpoint, ROYGBYV[5]);
        }
    // stuffabout how long-range towers work/attack (maybe fixed aim?) 
    }