int batW = 100;  //width of batman
float batX = 200;  //batman begins x
float batY = 200;  // batman begins Y
float speedX = 30; // batmans speed
float speedY =30;   //Batman speed
int direX = 1;  //batman direction
int direY = 1;
int batH= 200;   //batman height
import ddf.minim.*; //sound
AudioSnippet nana;
//minim minim;
void setup(){
 size(800,500);
 frameRate(30);
  //minim = new minim(this);
  nana = minim.loadSnippet("img/nana.MG3");
}
void draw(){
PImage gotham = loadImage("img/gotham.jpg");
imageMode(CENTER);
image(gotham,width/2, height/2);


  batX=batX +(speedX*direX);
  batY=batY+(speedY*direY);

  if (batX>width-batW || batX < batW){
    direX *= -1;
}
if (batY > height-batW || batY < batW){
  direY *= -1;
}
PImage bat = loadImage("img/bat.png");
image(bat,batX,batY,batH,batH);


if (mousePressed){
  nana = true;
  nana.rewind();
  nana.play();
//void nana (boolean

}}
