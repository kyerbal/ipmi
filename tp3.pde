// https://youtu.be/o5GaQpXWgGw
int diametro;  // Diámetro del circulo
int numAnillos = 15;  // Número de anillos
color[] colores;  //colores
PImage img ;

void setup() {
  size(800, 400);  
  background(255);
  diametro = 300;
  colores = new color[numAnillos];
  colorRandom();
  img= loadImage("julio_le_parc.jpg") ;
  img.resize(400, 400);
  
} 

void draw() {
  background(255);
  drawCircule(width /2 + 200, height / 2, diametro);
  textAlign(CENTER);
  textSize(14);
  fill(0);
  text("Presiona las teclas '+' y '-' para cambiar el tamaño del ciruculo", width /2 + 190, height / 2 + 170);
  text("Presiona la tecla 'R' para reiniciar", width /2 + 190, height / 2 + 190);
  image(img, 0, 0);
}
//circulos
void drawCircule(float centerX, float centerY, int diametro) {
  float ringWidth = (float)diametro / numAnillos;
  for (int i = 0; i < numAnillos; i++) {
    fill(colores[i]);
    ellipse(centerX, centerY, diametro - i * ringWidth, diametro - i * ringWidth);
  }
}

// colores
void colorRandom() {
  for (int i = 0; i < numAnillos; i++) {
    colores[i] = color(random(255), random(255), random(255));
  }
}

// modificaciones

void keyPressed() {
  if (key == '+') {
    diametro += 20;  // Aumenta el diámetro
  } else if (key == '-') {
    diametro -= 20;  // Disminuye el diámetro
    if (diametro < 20) {
      diametro = 20;  // Evita que el diámetro sea menor que 20
    }
  } else if (key == 'r' || key == 'R') {
    resetProgram();  // Reinicio
  }
}

// Reincio
void resetProgram() {
  diametro = 300;
  colorRandom();
}
