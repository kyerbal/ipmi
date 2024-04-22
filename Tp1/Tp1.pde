PImage img;

void setup() {
  background(255);
  size (800,400);
  img = loadImage ("manzana.png");
   
}

void draw() {

image(img,0,0); //imagen 


fill(146,172,41); // manzana dibujo
ellipse(610,205,300,310); 
noStroke();


strokeWeight(1); //hoja :D
fill(74,97,24);
stroke(201,208,140);
bezier(611,50,630,10,620,10,540,10);
bezier(611,50,560,10,550,10,550,10);
bezier(611,50,460,10,550,10,540,9);
noStroke();


fill(137,86,24);// tallo 
stroke(137,86,24);
bezier(619,50,630,40,630,20,665,24); 
strokeWeight(19); 
noStroke();






}
void mouseClicked () {
println (mouseX,mouseY); 
  
}
