class Walker {
  int x;
  int y;
  
  int jump;
  
  Walker() {
    this(1);
  }

  Walker(int jump) {
    x = width/2;
    y = width/2;
    this.jump = jump;    
  }

  
  void display() {
    stroke(int(random(255)), int(random(255)), int(random(255)));
    point(x,y);
}
  
  void step() {
    int choice = int(random(4));
    if (choice == 0) {
      x = x + 4;
    } else if (choice == 1) {
      x = x - 4;
    } else if (choice == 2) {
      y = y + 4;
    } else {
      y = y - 4;
    }
  }
};

Walker w;

void setup() {
  size(640,640);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}