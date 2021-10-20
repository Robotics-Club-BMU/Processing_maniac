void setup() {          // Runs once
  size(500, 500);
  stroke(255);
  background(192, 64, 0);
}

void draw() {           // Runs repeatedly
  line(150, 25, mouseX, mouseY);   // mouseX and mouseY are mouse coordinates on the canvas
}