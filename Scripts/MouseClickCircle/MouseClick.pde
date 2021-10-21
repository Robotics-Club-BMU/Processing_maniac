void setup(){
      background(192, 64, 0);    // Background color RGB
      size(500,500);
  
}

void draw(){                      // if draw() is not included the runs only once.
}

void mouseClicked(){
  //stroke(255,255,0);             // stroke color
  circle(mouseX,mouseY,50);      // Mouse coordinates as center draw a circle.
}