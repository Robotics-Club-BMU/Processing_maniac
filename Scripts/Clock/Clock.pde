// Initialise Variables
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

void setup() {
  size(500, 500);
  stroke(255);
  
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;      
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  
}

void draw() {
  background(0);       // Background black
  
  fill(100);           // Clock background gray
  noStroke();          // No border
  circle(width / 2, height / 2, 450);  // Clock circle
  
  // Mapping senconds, minutes and hours
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  stroke(255);
  strokeWeight(1);
  // Draw lines for second, minute and hour hands
  line(width / 2, height / 2, width / 2 + cos(s) * secondsRadius, height / 2 + sin(s) * secondsRadius);
  strokeWeight(2);
  line(width / 2, height / 2, width / 2 + cos(m) * minutesRadius, height / 2 + sin(m) * minutesRadius);
  strokeWeight(4);
  line(width / 2, height / 2, width / 2 + cos(h) * hoursRadius, height / 2 + sin(h) * hoursRadius);
  
  
  strokeWeight(2);
  beginShape(POINTS);    // Dots inside the cloc
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = width / 2 + cos(angle) * secondsRadius;
    float y = height / 2 + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape();
}