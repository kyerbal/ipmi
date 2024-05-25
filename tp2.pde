PImage img,img1,img2,img3; //imagenes
String txt1 = "Los \n tres \n chanchitos";
String txt2 = "Cuento popular";
String txt3 = "Se basa en la historia de 3 chanchitos \n por sobrevivir del lobo feroz";
String txt4 = "Cada uno arma su casa \n de distintos materiales \n y el mayor es el que lo hace de ladrillo  \n por eso se refugian en él \n al aparecer el lobo ";
String txt5 = "muchas gracias por\n por verlo :D";

int PosY = 0;//movimiento 
float textSizeincremento = 40;//movimiento 
float posY;//movimiento 
float posX;//movimiento 
float posX1;//movimiento 
float posY1;//movimiento 
float posY2;//movimiento 
int x =324;//movimiento 
int y= 400;//movimiento 
float vel = 1;//movimiento 
int oscuro = 255;//movimiento 


int pX;//boton
int pY;//boton
int Ancho;//boton
int Alto;//boton

void setup(){
size(640,480);
textSize(80);
textAlign(CENTER,CENTER);

img= loadImage("img.png");
img1=loadImage("img1.png");
img2=loadImage("img2.png");
img3=loadImage("img3.png");

posX = 800;//pos
posY = 740;//pos
posX1 = -200;//pos
posY1 = 740; //pos
posY2 = 500;//pos

pX = 225;//pos
pY= 429;//pos
Ancho=200;//pos
Alto=38;//pos

}

void draw(){  

println(frameCount , frameCount/60);
if (frameCount > 0 && frameCount < 600) //pag 1
image(img,0,0,640,480);
textSize(textSizeincremento);
fill(0);
text(txt1,posX,height/4);
 if (posX>=width/2) {
    posX --; 
}
fill(255,208,77);
text(txt2,posX1,270); 
 if (posX1<=width/2) {
    posX1 ++; 
 }
  if (frameCount > 610 && frameCount < 1200) {     //pag 2
    image(img1, 0, 0, 640, 480);
    textSize(textSizeincremento);
    fill(5, 215, 250);
    textAlign(CENTER, CENTER);
    text(txt3, width/2, height/2);
 textSizeincremento += sin(frameCount * 0.2) / 2;

} else  if (frameCount >1202 && frameCount <1750){ //pag 3
    
image(img2,0,0,640,480);
fill(random(150) ,random(155), random(155));
text(txt4,posY2,200);
if (posY2>=width/2){
  posY2 --; 
}

} 
else  if (frameCount >1752 && frameCount <5000){ //pag 4
image(img3,0,0,640,480);
fill(255,oscuro);
oscuro -= 1;
y-= vel;
text(txt5,x,y);
if (y < -500){
  y=300;
  x=(width);
  oscuro = 255;
}

noStroke();
smooth();
textSize(25);
fill(255,255,75);
rect(pX,pY,Ancho,Alto);
fill(0);
text("Volver",318,450);
}
}

void mousePressed(){
  if (( mouseX>pX) && (mouseX<pX + Ancho) && (mouseY > pY) && (mouseY < pY + Alto)){
    frameCount =0;
    posX = 800;//pos
    posY = 740;//pos  
    posX1 = -200;//pos
    posY1 = 740; //pos
    posY2 = 500;//pos
    pX = 225;//pos
    pY= 429;//pos
    Ancho=200;//pos
    Alto=38;//pos
  
    
  }
}
