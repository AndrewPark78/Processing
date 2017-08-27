int frameWidth = 750;
int frameHeight = 750;
void setup(){
  size(750, 750);
  pyramid(50,12,14);
}
void draw(){
  
}
void pyramid(int bWidth, int bHeight, int base){
  int startx = frameWidth/2 - base/2*bWidth;
  int xOrg = startx;
  int incX = bWidth/2;
  int line = base;
  int starty = frameHeight - 50;
  for(int j = 0; j < base; j ++){
    for(int i = 0; i < line; i ++){
      rect(startx, starty, bWidth, bHeight);
      startx += bWidth;
    }
    startx = xOrg+incX;
    starty -=bHeight;
    line --;
    incX += bWidth/2;
  }
}