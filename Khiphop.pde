class Khiphop{
final int N = 0;       // NONE
final int L = LEFT;       // Left
final int U = UP;       // Up
final int R = RIGHT;       // Right
final int D = DOWN;       // Down
final int X = -1;
final int BEAT_X = 250;
final int BEAT_Y = 350;
final int NOTE_W = 200;


// 
PImage imgLeft, imgUp, imgRight, imgDown, imgCircle;
PImage k011;
int [] notes = {D, R, D, N, D, L, R, N, D, R, L, N, R, U, L, R, U, N, R, L, D, U, N, N, D, R, R, D, R, N, N, N, N, N};
float firstNoteX;
int nowPressedNote;
float onBeatNoteX;
int onBeatNoteIndex;
int score = 0;
String message = "";
boolean keyDown = false;

Khiphop() {
  size(1024,768);
  fill(255);
  //textFont(createFont("arialBlack.ttf", 80));
  textAlign(LEFT);

  imgLeft = loadImage("img/left.png");
  imgUp = loadImage("img/up.png");
  imgRight = loadImage("img/right.png");
  imgDown = loadImage("img/down.png");
  imgCircle = loadImage("img/circle.png");
  k011 = loadImage("img/k011.jpg");
  firstNoteX = 650; 

  
}

void Display() { 
    background(255);
    image(k011,0,0,1024,768);
    float noteX;
    float noteY = BEAT_Y;
    float spacing = NOTE_W;
    PImage noteImg = null;
    for (int i=0; i<notes.length; i++){
        noteX = firstNoteX + i * spacing;
        
        if ((noteX < BEAT_X +15) && (noteX >BEAT_X -15)){
          onBeatNoteIndex = i;
          onBeatNoteX = noteX;
        }
        
        switch (notes[i]){
          case U:
            noteImg = imgUp;
            break;
          case D:
            noteImg = imgDown;
            break;
          case L:
            noteImg = imgLeft;
            break;
          case R:
            noteImg = imgRight;
            break;
          default:
            noteImg = null;
            break;
        }
        if (noteImg != null && 
           (noteX <width+NOTE_W) && 
           (noteX >0-NOTE_W)){
          image (noteImg, noteX, noteY);
        }
    }
    
    image(imgCircle, BEAT_X, BEAT_Y);
    
    switch (nowPressedNote){
      case U:
        noteImg = imgUp;
        break;
      case D:
        noteImg = imgDown;
        break;
      case L:
        noteImg = imgLeft;
        break;
      case R:
        noteImg = imgRight;
        break;
      default:
        noteImg = null;
        break;
    }
    if (noteImg != null){
      tint(255,126);
      image (noteImg, BEAT_X, BEAT_Y);
    }
    tint(255,255);
    textSize(55);
    text(score, width-100,height-50);
    text(message, 50, height-50);
    
    firstNoteX -=35;

}

void keyPressed(){
  if (!keyDown){
    keyDown = true;
    switch(keyCode){
      case UP:
         nowPressedNote = U;
         break;
      case DOWN:
         nowPressedNote = D;
         break;
      case LEFT:
         nowPressedNote = L;    
         break;
      case RIGHT:
         nowPressedNote = R;
         break;
      default:
        nowPressedNote = X;
        break;
    }

    int accuracy = int(map(abs(onBeatNoteX - BEAT_X),0,15, 3,1));
    switch (accuracy){
      case 3:
        if (nowPressedNote == notes[onBeatNoteIndex]){
          score += 8;
          //message = "Perfect!";
          notes[onBeatNoteIndex] = N;
        } //else {
          //message = "NOOP!";
        //}
        break;
      case 2:
        if (nowPressedNote == notes[onBeatNoteIndex]){
          score += 3;
          //message = "Cool!";
          notes[onBeatNoteIndex] = N;
        } //else {
          //message = "NOOB!";
        //}
        break;
      case 1:
        if (nowPressedNote == notes[onBeatNoteIndex]){
          score += 1;
          //message = "Good!";
          notes[onBeatNoteIndex] = N;
        }// else {
        //  message = "NOOB!";
        //}
        break;
    }
  }
}

void keyReleased(){
  keyDown = false;
  nowPressedNote = X;
}
}