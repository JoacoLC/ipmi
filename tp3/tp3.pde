//https://youtu.be/EmfqdmbRDdg

PImage og;
color  color1;
color  color2;

final float rot      = 0.025;
final float rot_og   = 1;
float       variance;

void setup() {
    size(800,400);
    rectMode(CENTER);
    og = loadImage("35.png");
    
    init(rot_og);
}

void draw() {
    pushMatrix();
    background(color1);
    translate(width - width / 4, width / 4);
    
    if (mouseX != pmouseX) variance = mouseX; // Si el mouse se movió recientemente, alterar la rotación de los cuadrados.
                                              // Es importante chequear que el mouse se haya movido, o de otro modo
                                              // el reseteo con ENTER / RETURN no tendría efecto (ya que los cuadrados siempre
                                              // estarían usando la posición del mouse).
    
    for (int i = 0; i < 31; i++) {
        if (i % 2 == 1) fill(color1);
        else            fill(color2);
        
        rotate(rot_followmouse(rot));
        scale(0.889);
        rect(0,0, width / 1.9, width / 1.9);
    }
    
    popMatrix();
    image(og, 0, 0);
}

void mousePressed() {
    color temp_color = color2;
    color2 = color1;
    color1 = temp_color;
}

void keyPressed() {
  if (keyCode == RETURN || keyCode == ENTER) init(rot_og);
}
