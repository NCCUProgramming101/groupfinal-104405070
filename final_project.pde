int gameState;
Khiphop hp;
Kballet ba;

int value = 0;
boolean unlockk=false, unlocks=false, unlockr=false, unlocksexy=false, unlockdress=false, unlocknooil=false, unlockyesoil=false;

final int GAME_START = 10000, GAME_RUN = 20000, CHOOSE_CHAR01 = 30000;

PImage title1,title2,startword, choosechar, selectk, selects, selectr;
//sboy
PImage s_001,
  s_001clothe,
  s_clothe_dress,
  s_clothe_dress01,
  s_clothe_sexy,
  s_clothe_sexy01,
  s_clothe_sexy02,
  s_clothe_sexy03,
  s_startword,
  s_002oil,
  s_oil_refuse,
  s_oil_refuse01,
  s_oil_refuse02,
  s_oil_refuse03,
  s_oil_refuse04,
  s_oil_refuse05,
  s_oil_agree,
  s_oil_agree01,
  s_oil_agree02,
  s_003cook,
  s_cook_taifood,
  s_cook_tai01,
  s_cook_tai02,
  s_cook_thaifood,
  s_cook_thai01,
  s_cook_thai02,
  s_cook_game,
  marry,
  makelove,
  breakup;
  
  final int S000=100,
  S001=1010,
  S002=1020,
  S003_SEXY01=1030,
  S004_SEXY02=1040,
  S0041_SEXY03=10401,
  S005_DRESS01=1050,
  S006=1060,
  S007=1070,
  S008=1080,
  S009=1090,
  S010=1100,
  S011=1110,
  S012=1120,
  S013=1130,
  S0131=11301,
  S014=1140,
  S015=1150,
  S016=1160,
  S017=1170,
  S018=1180,
  S019=1190,
  S020=1200,
  S021=1210,
  S022=1220,
  S023=1230;
      
  //kboy
 
  PImage k001;
  PImage k002;
  PImage k003;
  PImage k0031;
  PImage k0032;
  PImage k004;
  PImage k0041;
  PImage k0042;
  PImage k005;
  PImage k0051;
  PImage k0052;
  PImage k006;
  PImage k007;
  PImage k008;
  PImage k009;
  PImage k010;
  PImage k011;
  PImage k012;
  PImage k013;
  PImage k014;
  PImage k015;
  PImage k016;
  PImage k017;
  PImage k018;
  PImage k019;
  PImage k020;
  PImage k021;
  PImage kBreakup;
  PImage kMarry;
  
  final int K001 = 1;
  final int K002 = 2;
  final int K003 = 3;
  final int K0031 = 31;
  final int K0032 = 32;
  final int K004 = 4;
  final int K0041 = 41;
  final int K0042 = 42;
  final int K005 = 5;
  final int K0051 = 51;
  final int K0052 = 52;
  final int K006 = 6;
  final int K007 = 7;
  final int K008 = 8;
  final int K009 = 9;
  final int K010 = 10;
  final int K011 =11;
  final int K012 =12;
  final int K013 =13;
  final int K014 =14;
  final int K015 =15;
  final int K016 =16;
  final int K017 =17;
  final int K018 =18;
  final int K019 =19;
  final int K020 =20;
  final int K021 =21;
  final int Kbreakup = 888;
  final int Kmarry = 999;
  
  //rb
  PImage r01;
  PImage r02;
  PImage r03;
  PImage r031;
  PImage r032;
  PImage r041;
  PImage r042;
  PImage r051;
  PImage r052;
  PImage r06;
  //遊戲//
  PImage r07;
  PImage r08;
  PImage r081;
  PImage r082;
  PImage r091;
  PImage r092;
  PImage r101;
  PImage r102;
  PImage r103;
  PImage r11;
  PImage r111;
  PImage r112;
  PImage r121;
  PImage r122;
  PImage r131;
  PImage r132;
  PImage r133;
  PImage r134;
  PImage r141;
  PImage r142;
  
  final int R01 = 1789;
  final int R02 = 2789;
  final int R03 = 3789;
  final int R031 = 31789;
  final int R032 = 32789;
  final int R041 = 41789;
  final int R042 = 42789;
  final int R051 = 51789;
  final int R052 = 52789;
  final int R06 = 6789;
  final int R07 = 7789;
  final int R08 = 8789;
  final int R081 = 81789;
  final int R082 = 82789;
  final int R091 = 91789;
  final int R092 = 92789;
  final int R101 = 101789;
  final int R102 = 102789;
  final int R103 = 103789;
  final int R11 =11789;
  final int R111 =111789;
  final int R112 =112789;
  final int R121 =121789;
  final int R122 =122789;
  final int R131 =131789;
  final int R132 =132789;
  final int R133 =133789;
  final int R134 =134789;
  final int R141 =141789;
  final int R142 =142789;
  final int Rgame =15789;
   
  Sgame sg;
  LiBalm lb;
  import ddf.minim.*;
  Minim minim;
  AudioPlayer hiphop;
  AudioPlayer ballet;
  AudioPlayer married;
  AudioPlayer failed;
  AudioPlayer back;


void setup(){
  
  size(1024,768);
  gameState = GAME_START;
  title1 = loadImage("img/title1.jpg");
  title2 = loadImage("img/title2.jpg");
  startword = loadImage("img/startword.jpg");
  choosechar = loadImage("img/choosechar.jpg");
  selectk = loadImage("img/selectk.jpg");
  selects = loadImage("img/selects.jpg");
  selectr = loadImage("img/selectr.jpg");
  
  //sb
  s_001=loadImage("img/s_001.jpg");
  s_001clothe=loadImage("img/s_001clothe.jpg");
  s_clothe_dress=loadImage("img/s_clothe_dress.jpg");
  s_clothe_dress01=loadImage("img/s_clothe_dress01.jpg");
  s_clothe_sexy=loadImage("img/s_clothe_sexy.jpg");
  s_clothe_sexy01=loadImage("img/s_clothe_sexy01.jpg");
  s_clothe_sexy02=loadImage("img/s_clothe_sexy02.jpg");
  s_clothe_sexy03=loadImage("img/s_clothe_sexy03.jpg");
  s_startword=loadImage("img/s_startword.jpg");
  s_002oil=loadImage("img/s_002oil.jpg");
  s_oil_refuse=loadImage("img/s_oil_refuse.jpg");
  s_oil_refuse01=loadImage("img/s_oil_refuse01.jpg");
  s_oil_refuse02=loadImage("img/s_oil_refuse02.jpg");
  s_oil_refuse03=loadImage("img/s_oil_refuse03.jpg");
  s_oil_refuse04=loadImage("img/s_oil_refuse04.jpg");
  s_oil_refuse05=loadImage("img/s_oil_refuse05.jpg");
  s_oil_agree=loadImage("img/s_oil_agree.jpg");
  s_oil_agree01=loadImage("img/s_oil_agree01.jpg");
  s_oil_agree02=loadImage("img/s_oil_agree02.jpg");
  s_003cook=loadImage("img/s_003cook.jpg");
  s_cook_game=loadImage("img/s_cook_game.jpg");
  s_cook_tai01=loadImage("img/s_cook_tai01.jpg");
  s_cook_tai02=loadImage("img/s_cook_tai02.jpg");
  s_cook_taifood=loadImage("img/s_cook_taifood.jpg");
  s_cook_thai01=loadImage("img/s_cook_thai01.jpg");
  s_cook_thai02=loadImage("img/s_cook_thai02.jpg");
  s_cook_thaifood=loadImage("img/s_cook_thaifood.jpg");
  marry=loadImage("img/marry.png");
  makelove=loadImage("img/makelove.png");
  breakup=loadImage("img/breakup.png");
 
  //sb = new Sboy();
  sg = new Sgame();
  
  //kb
  k001 = loadImage("img/k001.jpg");
  k002 = loadImage("img/k002.jpg");
  k003 = loadImage("img/k003.jpg");
  k0031 = loadImage("img/k0031.jpg");
  k0032 = loadImage("img/k0032.jpg");
  k004 = loadImage("img/k004.jpg");
  k0041 = loadImage("img/k0041.jpg");
  k0042 = loadImage("img/k0042.jpg");
  k005 = loadImage("img/k005.jpg");
  k0051 = loadImage("img/k0051.jpg");
  k0052 = loadImage("img/k0052.jpg");
  k006 = loadImage("img/k006.jpg");
  k007 = loadImage("img/k007.jpg");
  k008 = loadImage("img/k008.jpg");
  k009 = loadImage("img/k009.jpg");
  k010 = loadImage("img/k010.jpg");
  k011 = loadImage("img/k011.jpg");
  k012 = loadImage("img/k011.jpg");
  k013 = loadImage("img/k013.jpg");
  k014 = loadImage("img/k014.jpg");
  k015 = loadImage("img/k015.jpg");
  k016 = loadImage("img/k016.jpg");
  k017 = loadImage("img/k017.jpg");
  k018 = loadImage("img/k018.jpg");
  k019 = loadImage("img/k019.jpg");
  k020 = loadImage("img/k020.jpg");
  k021 = loadImage("img/k021.jpg");
  kBreakup = loadImage("img/breakup.png");
  kMarry = loadImage("img/marry.png");
  hp = new Khiphop();
  ba = new Kballet();
  minim = new Minim(this); 
  hiphop = minim.loadFile("hiphop.mp3"); 
  ballet = minim.loadFile("ballet.mp3");
  married = minim.loadFile("married.mp3");
  failed = minim.loadFile("failed.mp3");
  back = minim.loadFile("back.mp3");

  
  //rb
  r01 = loadImage("img/r01.jpg");
  r02 = loadImage("img/r02.jpg");
  r03 = loadImage("img/r03.jpg");
  r031 = loadImage("img/r031.jpg");
  r032 = loadImage("img/r032.jpg");
  r041 = loadImage("img/r041.jpg");
  r042 = loadImage("img/r042.jpg");
  r051 = loadImage("img/r051.jpg");
  r052 = loadImage("img/r052.jpg");
  r06 = loadImage("img/r06.jpg");
  r07 = loadImage("img/r07.jpg");
  r08 = loadImage("img/r08.jpg");
  r081 = loadImage("img/r081.jpg");
  r082 = loadImage("img/r082.jpg");
  r091 = loadImage("img/r092.jpg");
  r101 = loadImage("img/r101.jpg");
  r102 = loadImage("img/r102.jpg");
  r103 = loadImage("img/r103.jpg");
  r11 = loadImage("img/r11.jpg");
  r111 = loadImage("img/r111.jpg");
  r112 = loadImage("img/r112.jpg");
  r121 = loadImage("img/r121.jpg");
  r122 = loadImage("img/r122.jpg");
  r131 = loadImage("img/r131.jpg");
  r132 = loadImage("img/r132.jpg");
  r133 = loadImage("img/r133.jpg");
  r134 = loadImage("img/r134.jpg");
  r141 = loadImage("img/r141.png");
  r142 = loadImage("img/r142.png");
  lb = new LiBalm();
}

void draw(){
    back.play();
    back.loop();
  if(unlockk){
    image(selectk,0,0,width,height);
  }
  
  if(unlocks){
    image(selects,0,0,width,height);
  }
  
  if(unlockr){
    image(selectr,0,0,width,height);
  }
    
  
  switch(gameState){
    
   case GAME_START:
   image(title1,0,0,width,height);
   if(mouseX>380 && mouseX<665 && mouseY>495 && mouseY<570){
    image(title2,0,0,width,height);
    if(mousePressed){
     gameState = GAME_RUN;
    }
   }
   break;
   
   case GAME_RUN:
   image(startword,0,0,width,height);
   if(mousePressed){
     image(choosechar,0,0,width,height);
     gameState = CHOOSE_CHAR01;
     }
     break;
     
    case CHOOSE_CHAR01:
    
      if(mouseX>40 && mouseX<345 && mouseY>110 && mouseY<720){
        unlockk = true;
        unlocks = false;
        unlockr = false;
        if(mousePressed){
          image(k001,0,0,width,height);
          gameState = K001;
        }
      }
      if(mouseX>360 && mouseX<660 && mouseY>110 && mouseY<720){
        unlockk = false;
        unlocks = true;
        unlockr = false;
        if(mousePressed){
          image(s_startword,0,0,width,height);
          gameState = S000;
        }
      }
      if(mouseX>675 && mouseX<980 && mouseY>110 && mouseY<720){
        unlockk = false;
        unlocks = false;
        unlockr = true;
        if(mousePressed){
          image(r01,0,0,width,height);
          gameState = R01;
        }
      }
      break;
      
      //sb
      case S000:
        image(s_startword,0,0,width,height);
        if(mousePressed){
          gameState = S001;
        }
        break;
        
        case S001:
        image(s_001,0,0,width,height);
        if(mousePressed){
         gameState = S002;
        }
        break;
        
        case S002:
        image(s_001clothe,0,0,width,height);
        if(mouseX>20 && mouseX<505 && mouseY>220 && mouseY<745){
         image(s_clothe_sexy,0,0,width,height);
         if(mousePressed){
         gameState = S003_SEXY01;
        }
      }
        if(mouseX>515 && mouseX<1000 && mouseY>220 && mouseY<745){
         image(s_clothe_dress,0,0,width,height);
         if(mousePressed){
         gameState = S005_DRESS01;
        }
      }
        break;
        
        case S003_SEXY01:
        image(s_clothe_sexy01,0,0,width,height);
        if(mousePressed){
         gameState = S004_SEXY02;
        }
        break;
        
        case S004_SEXY02:
        image(s_clothe_sexy02,0,0,width,height);
        if(mousePressed){
         gameState = S0041_SEXY03;
        }
        break;
        
        case S0041_SEXY03:
        image(s_clothe_sexy03,0,0,width,height);
        if(mousePressed){
         gameState = S023;
        }
        break;
        
        case S023:
        image(makelove,0,0,width,height);
        back.pause();
        failed.play();
        if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
        break;
        
        case S005_DRESS01:
        image(s_clothe_dress01,0,0,width,height);
        if(mousePressed){
         gameState = S006;
        }
        break;
        
        case S006:
        image(s_002oil,0,0,width,height);        
        if(mouseX>20 && mouseX<505 && mouseY>220 && mouseY<745){
         image(s_oil_refuse,0,0,width,height);
         if(mousePressed){
         gameState = S007;
        }
      }
        if(mouseX>515 && mouseX<1000 && mouseY>220 && mouseY<745){
         image(s_oil_agree,0,0,width,height);
         if(mousePressed){
         gameState = S012;
        }
      }
      
      break;
        
        case S007:
        image(s_oil_refuse01,0,0,width,height);
        if(mousePressed){
         gameState = S008;
        }
        break;
        
        case S008:
        image(s_oil_refuse02,0,0,width,height);
        if(mousePressed){
         gameState = S009;
        }
        break;
        
        case S009:
        image(s_oil_refuse03,0,0,width,height);
        if(mousePressed){
         gameState = S010;
        }
        break;
        
        case S010:
        image(s_oil_refuse04,0,0,width,height);
        if(mousePressed){
         gameState = S011;
        }
        break;
        
        case S011:
        image(s_oil_refuse05,0,0,width,height);
        if(mousePressed){
         gameState = S015;
        }
        break;
        
        case S015:
        image(s_003cook,0,0,width,height);
        if(mouseX>20 && mouseX<505 && mouseY>220 && mouseY<745){
         image(s_cook_taifood,0,0,width,height);
         if(mousePressed){
         gameState = S016;
        }
      }
        if(mouseX>515 && mouseX<1000 && mouseY>220 && mouseY<745){
         image(s_cook_thaifood,0,0,width,height);
         if(mousePressed){
         gameState = S018;
        }
      }
        break;
        
        case S012:
        image(s_oil_agree01,0,0,width,height);
        if(mousePressed){
         gameState = S013;
        }
        break;
        
        case S013:
        image(s_oil_agree02,0,0,width,height);
        if(mousePressed){
         gameState = S0131;
        }
        break;
        
        case S0131:
        image(makelove,0,0,width,height);
        back.pause();
        failed.play();
        if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
        break;
                    
        case S016:
        image(s_cook_tai01,0,0,width,height);
        if(mousePressed){
           gameState = S017;
          }
          break;
        
        case S017:
        image(s_cook_tai02,0,0,width,height);
        if(mousePressed){
           gameState = S020;
          }
        break;
        
        case S018:
      image(s_cook_thai01,0,0,width,height);
      if(mousePressed){
         gameState = S019;
        }
        break;
        
        case S019:
      image(s_cook_thai02,0,0,width,height);
      if(mousePressed){
         gameState = S020;
        }
        break;
        
        case S020:
      image(s_cook_game,0,0,width,height);
      if(mousePressed){
          gameState = S021;
      }
        break;
        
        case S021:
      sg.Display();
      sg.keyPressed();
      sg.keyReleased();
      if(mousePressed){
         gameState = GAME_START;
        } 
        break;
        
       //kb plot
       
       case K001:
      image(k001,0,0,width,height);
      if(mousePressed){
       gameState = K002; 
      }
      break;
      case K002:
      image(k002,0,0,width,height);
      if(mousePressed){
       gameState = K003; 
      }
      break;
      case K003:
      image(k003,0,0,width,height);
      if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
       image(k0031,0,0,width,height); 
       if(mousePressed){
        gameState = K004; 
       }
      }
      if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
       image(k0032,0,0,width,height);
       if(mousePressed){
        gameState = K005; 
       }
      }
      break;
      case K004:
      image(k004,0,0,width,height);
         if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
       image(k0041,0,0,width,height); 
       if(mousePressed){
        gameState = K006; 
       }
      }
      if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
       image(k0042,0,0,width,height);
       if(mousePressed){
        gameState = K013; 
       }
      }
      break;
      
      case K005:
      image(k005,0,0,width,height);
         if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
       image(k0051,0,0,width,height); 
       if(mousePressed){
         gameState = K011;
       }
      }
      if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
       image(k0052,0,0,width,height);
       if(mousePressed){
        gameState = K012; 
       }
      }
      break;
      case K006:
      image(k006,0,0,width,height);
      if(mousePressed){
       gameState = K007; 
      }
      break;
      case K007:
      image(k007,0,0,width,height);
      if(mousePressed){
        gameState = K008;
      }
      break;
      case K008:
      image(k008,0,0,width,height);
      if(mousePressed){
        gameState = K009;
      }
      break;
      case K009:
      image(k009,0,0,width,height);
      if(mousePressed){
        gameState = K010;
      }
      break;
      case K010:
      image(k010,0,0,width,height);
      if(mousePressed){
       gameState = Kbreakup;
      }
      break;
      case K011: 
        ba.Display(); 
        ba.keyPressed(); 
        ba.keyReleased(); 
        if(mousePressed){ 
        gameState = K020; 
        }
      break;
      case K012:
      hp.Display();
      hp.keyPressed();
      hp.keyReleased();
        if(mousePressed){
        gameState = K021;
      }
      break;
      case K013:
      image(k013,0,0,width,height);
      if(mousePressed){
        gameState = K014;
      }
      break;
      case K014:
      image(k014,0,0,width,height);
      if(mousePressed){
        gameState = K015;
      }
      break;
      case K015:
      image(k015,0,0,width,height);
      if(mousePressed){
        gameState = K016;
      }
      break;    
      case K016:
      image(k016,0,0,width,height);
      if(mousePressed){
        gameState = K017;
      }
      break;    
      case K017:
      image(k017,0,0,width,height);
      if(mousePressed){
        gameState = K018;
      }
      break;
      case K018:
      image(k018,0,0,width,height);
      if(mousePressed){
        gameState = K019;
      }
      break;
      case K019:
      image(k014,0,0,width,height);
      if(mousePressed){
        gameState = Kmarry;
        }
      
      break;
      case K020:
      image(k020,0,0,width,height);
      if(mousePressed){
       gameState = Kbreakup;
        }
      
      break;
      case K021:
      image(k021,0,0,width,height);
          if(mousePressed){
       gameState = Kmarry;
      }
      break;
      case Kbreakup:
      image(kBreakup,0,0,width,height);
      back.pause();
      failed.play();
      if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
      break;
      case Kmarry:
      image(kMarry,0,0,width,height);
      back.pause();
      married.play();
      if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
      break;
       
       //rb plot
       case R01:
    image(r01,0,0,width,height);
    if(mousePressed){
     gameState = R02; 
    }
    break;
    case R02:
    image(r02,0,0,width,height);
    if(mousePressed){
     gameState = R03; 
    }
    break;
    
    case R03:
    image(r03,0,0,width,height);
    if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
     image(r031,0,0,width,height); 
     if(mousePressed){
      gameState = R041; 
     }
    }
    if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
     image(r032,0,0,width,height);
     if(mousePressed){
      gameState = R051; 
     }
    }
    break;
    case R041:
    image(r041,0,0,width,height);
    if(mousePressed){
     gameState = R042; 
    }
    break;
    case R042:
    image(r042,0,0,width,height);
    if(mousePressed){
      gameState = R141;
    }
    break;
    
    case R051:
    image(r051,0,0,width,height);
    if(mousePressed){
     gameState = R052; 
    }
    break;
    case R052:
    image(r052,0,0,width,height);
    if(mousePressed){
     gameState = R06; 
    }
    break;
    case R06:
    image(r052,0,0,width,height);
    if(mousePressed){
     gameState = Rgame; 
    }
    break;

    case Rgame:
    lb.Display();
     /* if(mousePressed){
      gameState = R07;
    }
    */
    break;
    case R07:
    image(r07,0,0,width,height);
    if(mousePressed){
      gameState = R08;
    }
    break;
    case R08:
    image(r08,0,0,width,height);
    if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
     image(r081,0,0,width,height); 
     if(mousePressed){
      gameState = R091; 
     }
    }
    if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
     image(r082,0,0,width,height);
     if(mousePressed){
      gameState = R092; 
     }
    }
    break;
    
    case R091:
    image(r091,0,0,width,height);
    if(mousePressed){
      gameState = R101;
    }
    break;
    case R092:
    image(r092,0,0,width,height);
    if(mousePressed){
      gameState = R101;
    }
    break;
    case R101:
    image(r101,0,0,width,height);
    if(mousePressed){
      gameState = R102;
    }
    break;
    case R102:
    image(r102,0,0,width,height);
    if(mousePressed){
      gameState = R103;
    }
    break;
    case R103:
    image(r103,0,0,width,height);
    if(mousePressed){
      gameState = R11;
    }
    break;
    case R11:
    image(r11,0,0,width,height);
    if(mouseX<505 &&mouseX>20 &&mouseY<745 &&mouseY>220){
     image(r111,0,0,width,height); 
     if(mousePressed){
      gameState = R121; 
     }
    }
    if(mouseX<1000 &&mouseX>515 &&mouseY<745 &&mouseY>220){
     image(r112,0,0,width,height);
     if(mousePressed){
      gameState = R131; 
     }
    }
    break;
    case R121:
    image(r121,0,0,width,height);
    if(mousePressed){
      gameState = R122;
    }
    break;
    case R122:
    image(r122,0,0,width,height);
    if(mousePressed){
      gameState = R142;
    }
    break;
    case R131:
    image(r131,0,0,width,height);
    if(mousePressed){
      gameState = R132;
    }
    break;
    case R132:
    image(r132,0,0,width,height);
    if(mousePressed){
      gameState = R133;
    }
    break;
    case R133:
    image(r133,0,0,width,height);
    if(mousePressed){
      gameState = R134;
    }
    break;
    case R134:
    image(r134,0,0,width,height);
    if(mousePressed){
      gameState = R141;
    }
    break;
    case R141:
    image(r141,0,0,width,height);
    back.pause();
    failed.play();
    if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
    break;
    case R142:
    image(r142,0,0,width,height);
    back.pause();
    married.play();
    if(mousePressed){
          gameState = GAME_START;
          back.play();
          back.loop();
        }
    break;
    
  }
}
      
   