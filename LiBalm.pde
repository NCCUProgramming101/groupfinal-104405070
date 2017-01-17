class LiBalm{
int a=0;
int b=0;
int c=0;
int d=0;
int e=0;
PImage bg,lipBalm,skin1,skin2,skin3,skin4,skin5;


LiBalm(){
  size (1024,768);
  skin1 = loadImage("img/skin1.png");
  skin2 = loadImage("img/skin2.png");
  skin3 = loadImage("img/skin3.png");
  skin4 = loadImage("img/skin4.png");
  skin5 = loadImage("img/skin5.png");
  bg = loadImage("img/bg.jpg");
  lipBalm = loadImage("img/lipBalm.png");
  imageMode(CORNER);
  colorMode(HSB, 360, 100, 100);
  noCursor(); // make mouse disappear
}

void Display(){  
  background(bg);
  tint(360,255-20*a);
  image(skin1,0,0);
  tint(360,255-20*b);
  image(skin2,0,0);
  tint(360,255-20*c);
  image(skin3,0,0);
  tint(360,255-20*d);
  image(skin4,0,0);
  tint(360,255-20*e);
  image(skin5,0,0);
  if(mouseX<462 &&mouseX>291 &&mouseY<400 &&mouseY>306){
     if(mousePressed){
      a++;
     }
    }
    if(mouseX<762 &&mouseX>633 &&mouseY<390 &&mouseY>299){
     if(mousePressed){
      b++;
     }
    }
    if(mouseX<860 &&mouseX>727 &&mouseY<595 &&mouseY>476){
     if(mousePressed){
      c++;
     }
    }
    if(mouseX<665 &&mouseX>502 &&mouseY<681 &&mouseY>583){
     if(mousePressed){
      d++;
     }
    }
    if(mouseX<333 &&mouseX>192 &&mouseY<599 &&mouseY>530){
     if(mousePressed){
      e++;
     }
    }
  tint(350,255);
  image(lipBalm,mouseX-81/2,mouseY);
  

  
}
}