
import processing.sound.*;
SoundFile file;
PImage img;
PImage img2;

int rgbCount;
boolean upwards = true;
boolean front = true;

void settings() {
 fullScreen();
}

void setup () {
 img = loadImage("../Grattis.png");
 img2 = loadImage("../Soitto.gif");
 // Load a soundfile from the /data folder of the sketch and play it back
 file = new SoundFile(this, "../emelieMin.mp3");
 file.loop();
}

void draw () {
 
 if (front) {
 
 if (rgbCount >= 255) {
   upwards = false;
  }
 if (rgbCount <= 0) {
   upwards = true;
  }
 if (upwards) {
   rgbCount++;
  }
 if (upwards == false) {
   rgbCount--;
  }
 background(0,0,0);
 noStroke();
 
 
 fill(rgbCount/2,110-rgbCount/2,110-rgbCount/2);
 ellipse(mouseX,mouseY,3200,3200);
 fill(rgbCount/1.85,120-rgbCount/2,120-rgbCount/2);
 ellipse(mouseX,mouseY,2800,2800);
 fill(rgbCount/1.7,130-rgbCount/2,130-rgbCount/2);
 ellipse(mouseX,mouseY,2400,2400);
 fill(rgbCount/1.55,140-rgbCount/2,140-rgbCount/2);
 ellipse(mouseX,mouseY,2000,2000);
 fill(rgbCount/1.4,150-rgbCount/2,150-rgbCount/2);
 ellipse(mouseX,mouseY,1600,1600);
 fill(rgbCount/1.25,160-rgbCount/2,160-rgbCount/2);
 ellipse(mouseX,mouseY,1200,1200);
 fill(rgbCount/1.1,170-rgbCount/2,170-rgbCount/2);
 ellipse(mouseX,mouseY,800,800);
 fill(rgbCount,180-rgbCount/2,180-rgbCount/2);
 ellipse(mouseX,mouseY,400,400);
 
 fill(random(100,255), random(100,255), random(100,255));
 ellipse(random(width), random(height), 100,100);
 ellipse(random(width), random(height), 100,100);
 
 img.resize(400,300);
 image(img, mouseX-200,mouseY-300);
 
 
 
 }
 
 else {
  String s = "Emelie!!! \n \nEtt stort grattis till dig på födelsedagen min fina fina vän! Jag hoppas att du har det bra i Schweiz och att du blivit/ska bli riktigt firad med mat och fina människor. När jag gick igenom gamla videos på oss (som man gör när nån av oss fyra fyller år.. Hahah) så hittade jag bara massa videos på oss när vi var aningens onyktra och inte på alkohol... Hahaha! Så har är ett litet ljudarkiv till dig med inspelade konversationer vi haft. Konversationer som till absolut största del är massa nonsens. Men ett nonsens som gör mig väldigt nostalgisk, och tar mig tillbaka till tiden på KSB när det kändes som att livet låg framför våra fötter och var vårt att erövra! \n \nStora kramar och massa kärlek till dig min underbara Emelie!";
  background(255);
  fill(0);
  textSize(20);
  text(s, width/2-400, height/2-250, 800, 500);
  
  img.resize(400,300);
  image(img2, width*0.7 ,height*0.6);
  
 }
 
 String t = "Klicka för att byta sida";
 fill(0);
 textSize(15);
 text(t, width/2-100, height-50, 200, 50);
 
}

void mouseClicked() {
 if (front) {
  front = false;
 } else {
  front = true;
 }
}
