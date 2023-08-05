// abstract class for adding tower classes
public class Towers {
    protected PVector NW; // north west
    protected PVector NE; // north east
    protected PVector SW; // south west
    protected PVector SE; // south east
    protected PVector midpoint;
    public int squareLength = 100;
    
    public Towers(int x, int y) {
        NW = new PVector(x, y);
        NE = new PVector((x + squareLength), y);
        SW = new PVector(x,(y + squareLength));
        SE = new PVector((x + squareLength),(y + squareLength));
        midpoint = new PVector(x + (squareLength / 2), y + (squareLength / 2));
    }
    
    // square for base of tower
    public void drawBase() {
        fill(255);
        square(NW.x, NW.y, squareLength);
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
        addCenterCircle(80, ROYGBYV[6]);
        addCenterCircle(60, ROYGBYV[5]);
        addCenterCircle(40, ROYGBYV[4]);
        addCenterCircle(20, ROYGBYV[3]);
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
        addTriangle(SW, SE, midpoint, ROYGBYV[2]);
        addTriangle(NW, NE, midpoint, ROYGBYV[2]);
        addTriangle(NW, SW, midpoint, ROYGBYV[5]);
        addTriangle(NE, SE, midpoint, ROYGBYV[5]);
    }
    // stuffabout how long-range towers work/attack (maybe fixed aim?) 
}