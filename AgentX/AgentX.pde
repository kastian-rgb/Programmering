//Movement m;
//Movement mouse;
Agent[] a = new Agent[1];
Plants[] p = new Plants[10];
boolean debug = true;

void setup() {
  size(640, 480);
  //m = new Wander(width/2,height/2);
  //mouse = new Movement(width/2,height/2);
  for (int i = 0; i<a.length; i++ ) {
    a[i] = new Agent(100, 100);
  }
  for (int i = 0; i<p.length; i++ ) {
    p[i] = new Plants();
  }
}


void draw() {
  background(255);
  //m.run();
  //mouse.seek(new PVector(mouseX, mouseY));
  //mouse.run();
  for (int i = 0; i<a.length; i++) {
    a[i].update();
  }
  for (int i = 0; i<p.length; i++) {
    p[i].update();
  }
}


void mousePressed() {

  debug = !debug;
}
