Mob hans; // star of the game
Mob egon;
void setup(){
size(640,480);
hans = new Mob(width/2,height/2);
egon = new Mob(width/4,height/2);
}
void draw(){

  hans.run();
  egon.run();

}
