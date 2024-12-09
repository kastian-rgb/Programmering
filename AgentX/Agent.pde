class Agent {
  Movement m;
  boolean isHungry = true;

  Agent(float x, float y) {
    m = new Wander(x, y);
  }

  void update() {
    if (!isHungry)  
      m.run();
    else {
      
      m.seek(findTarget());
      m.update();
    m.borders();
    m.display();
    }
  }
  
  PVector findTarget(){
    int index = 0;
    float oldD = 1000;
    for(int i =0; i<p.length;i++){
    if(m.position.dist(p[i].pos) < oldD && p[i].isDead == false){
    oldD = m.position.dist(p[i].pos);
    index = i;
    if(m.position.dist(p[i].pos)< 20){
    p[i].kill();
    }
    }
    }
    PVector t = p[index].pos.copy();
  return t;
  }
  
}
