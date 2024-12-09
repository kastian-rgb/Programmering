class Plants {
  PVector pos;
  boolean isDead = false;

  Plants() {
    pos = new PVector(random(10, 600), random(10, 420));
  }

  void update() {
    fill(0, 255, 0);
    if (!isDead)
      ellipse(pos.x, pos.y, 10, 10);
    fill(255);
  }

  void kill() {
    isDead = true;
  }
}
