int angles[] = { 30, 10, 45, 35, 60, 38, 75, 67 };

void setup() {
  size(500, 500);
  noStroke();  // Disables border
  noLoop();  // Runs draw once and stop
}

void draw() {
  background(100);
  float lastAngle = 0;
  for (int i = 0; i < angles.length; i++) {
    float gray = map(i, 0, angles.length, 0, 255);  // out of range value into range 0 to 255
    fill(gray);                                     // background color
    arc(width/2, height/2, 300, 300, lastAngle, lastAngle+radians(angles[i]));  // drawing arc
    lastAngle += radians(angles[i]);
  }
}