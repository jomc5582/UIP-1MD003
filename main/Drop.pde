class Drop {
  float x, y;
  float speed;
  float sizeScale;

  Drop(float xPos) {
    x = xPos;
    y = 0;
    speed = random(2, 4);
    sizeScale = random(0.02, 0.07);
  }

  void update() {
    y += speed;
  }

  void display() {
    if(y < (height - cupHeight)){
    pushMatrix();
    translate(x, y);
    scale(sizeScale);
    shape(drip, -drip.width/2, -drip.height/2); // Center the shape
    popMatrix();
    }
  }
  
}
