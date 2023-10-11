float angle = PI / 6;
float ratio = 0.67;
float initialLen = 120;

void setup() {
  size(400, 400);
  background(255);
  stroke(0);
  frameRate(10); // Ajusta la velocidad de la animación
  translate(width / 2, height);
  noLoop();
}

void draw() {
  background(255);
  translate(width / 2, height);
  branch(initialLen);
  initialLen *= ratio; // Acorta la longitud para la siguiente iteración
}

void branch(float len) {
  line(0, 0, 0, -len);
  translate(0, -len);
  
  if (len > 4) {
    pushMatrix();
    rotate(angle);
    branch(len * ratio);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    branch(len * ratio);
    popMatrix();
  }
}
