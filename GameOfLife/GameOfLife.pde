boolean[][] map = new boolean[40][40];
boolean [][] toTurn = new boolean[40][40];
void setup(){
  size(800,800);
  for(int i = 0; i < map.length; i ++ ){
    for(int j = 0; j < map[0].length; j++){
      rect(20*i,20*j,20,20);
    }
  }
  map[1][1] = true;
  map[2][1] = true;
  map[0][1] = true;
  map[1][2] = true;
  map[10][10] = true;
}
void draw(){
  checkNeighbors(1,1);
  map[10][10] = checkNeighbors(10,10);
  for(int i = 0; i < map.length; i ++ ){
    for(int j = 0; j < map[0].length; j++){
      if(map[i][j] == true){
        fill(0,55,255);
        rect(20*i,20*j,20,20);
      }
      else{
       fill(255,255,255);
       rect(20*i,20*j,20,20);
      }
    }
  }

}
public boolean checkNeighbors(int cellX, int cellY){
  int totalNeighbors = 0;
  if(map[cellX+1][cellY+0] == true){
    totalNeighbors ++;
  }
  if(map[cellX-1][cellY+0] == true){
    totalNeighbors ++;
  }
  if(map[cellX+1][cellY+1] == true){
    totalNeighbors ++;
  }
  if(map[cellX+1][cellY-1] == true){
    totalNeighbors ++;
  }
  if(map[cellX-1][cellY+1] == true){
    totalNeighbors ++;
  }
  if(map[cellX-1][cellY-1] == true){
    totalNeighbors ++;
  }
  if(map[cellX+0][cellY+1] == true){
    totalNeighbors ++;
  }
  if(map[cellX+0][cellY-1] == true){
    totalNeighbors ++;
  }
  print(totalNeighbors + " "+ cellX + " "+ cellY + "|");
  if(totalNeighbors == 2 || totalNeighbors == 3){
    return true;
  }
  return false;
}