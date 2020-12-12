int rectX = 325;
int rectY = 300;
int rectSize = 50;
int[] collisionX = {100,100};
int[] collisionSizeX = {400,400};
int[] collisionY = {100,400};
int[] collisionSizeY = {50,50};

void setup() {
size(600,600);
}

void draw() {
  background(255,240,200);
  rect(rectX,rectY,rectSize,rectSize);
  
  rect(collisionX[0],collisionY[0],collisionSizeX[0],collisionSizeY[0]);
  rect(collisionX[1],collisionY[1],collisionSizeX[1],collisionSizeY[1]);
  
  if ((keyPressed == true) && (key == 'w')){
    rectY = rectY - 5;
  }
  else if ((keyPressed == true) && (key == 's')){
    rectY = rectY + 5;
  }
  else if ((keyPressed == true) && (key == 'a')){
    rectX = rectX - 5;
  }
  else if ((keyPressed == true) && (key == 'd')){
    rectX = rectX + 5;
  }
  
  if (rectY >= height-rectSize) {
    rectY  = rectY - 5;
  }
  else if (rectY <= 0) {
    rectY  = rectY + 5;
  }
  else if (rectX >= width-rectSize) {
    rectX  = rectX - 5;
  }
  else if (rectX <= 0) {
    rectX  = rectX + 5;
  }
  
  for(int i = 0; i <= 1; i++) {
  if (rectX + rectSize > collisionX[i] && rectX + rectSize < collisionX[i]+collisionSizeX[i] && rectY + rectSize > collisionY[i] && rectY + rectSize < collisionY[i] + (collisionSizeY[i]*2)) {
    rectX = rectX - 5;
  }
  if (rectX + rectSize > collisionX[i] && rectX + rectSize < collisionX[i]+collisionSizeX[i] + 50 && rectY + rectSize > collisionY[i] && rectY + rectSize < collisionY[i] + (collisionSizeY[i]*2)) {
    rectX = rectX + 5;
  }
  
  if (rectY + rectSize > collisionY[i] && rectY + rectSize < collisionY[i]+collisionSizeY[i] && rectX + rectSize > collisionX[i] && rectX + rectSize < collisionX[i] + collisionSizeX[i]+50) {
    rectY = rectY - 5;
  }
  if (rectY + rectSize > collisionY[i] && rectY + rectSize < collisionY[i]+collisionSizeY[i] + 50 && rectX + rectSize > collisionX[i] && rectX + rectSize < collisionX[i] + collisionSizeX[i]+50) {
    rectY = rectY + 5;
  }
  }

  
}
