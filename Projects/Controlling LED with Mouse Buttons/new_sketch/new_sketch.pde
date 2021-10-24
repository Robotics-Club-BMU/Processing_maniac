import processing.serial.*;

Serial myPort;

PImage bg;

void setup(){
  size(600,450);
  bg=loadImage("led.png");
  myPort = new Serial(this,"COM3",115200);
  
}

void draw(){
  background(bg);
  
  if(mousePressed && (mouseButton == LEFT)){
    myPort.write('1');
  }
  if(mousePressed && (mouseButton == RIGHT)){
    myPort.write('0');
  }
  
}
