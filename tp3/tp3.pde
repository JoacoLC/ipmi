//https://youtu.be/EmfqdmbRDdg

PImage og;
color  black = (0);
color  white = (255);

final float rot      = 0.025;
final float var_og   = 1;
float       variance = var_og;

void setup() {
    size(800,400);
    rectMode(CENTER);
    og = loadImage("35.png");
}

void draw() {
    pushMatrix();
    background(black);
    translate(width - width / 4, width / 4);
    
    if (pmouseX != mouseX) variance = mouseX;
    
    for (int i = 0; i < 31; i++) {
        if (i % 2 == 1) fill(black);
        else            fill(white);
        
        rotate(rot_followmouse(rot));
        scale(0.889);
        rect(0,0, width / 1.9,width / 1.9);
    }
    
    popMatrix();
    image(og, 0, 0);
}

void mousePressed() {
    color prev_white = white;
    white = black;
    black = prev_white;
}

void keyPressed() {
  if (keyCode == RETURN || keyCode == ENTER) {
      variance = var_og;
      white    = (255);
      black    = (0);
  }
}
