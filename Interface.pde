class Interface {
  
  private float w, h, wXP, hXP, wMP, hMP, glasses;
  
  Interface() {
    w = wMP = wXP = 225;
    h = hMP = hXP = 45;
  }
  
  void display() {
    boxXP();
    boxMP();
    textGlasses();
  }
  
  void update() {
    
  }
  
  void boxXP() {
    fill(0);
    strokeWeight(4);
    stroke(#DEDEDE);
    rect(50, 50, w, h);
    fill(#FF0000);
    //noStroke();
    rect(50, 50, wXP, hXP);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(24);
    text(int(wXP) + "/" + int(w), 160, 70);
  }
  
  void boxMP() {
    fill(0);
    strokeWeight(4);
    stroke(#DEDEDE);
    rect(50, 150, w, h);
    fill(#0000FF);
    //noStroke();
    rect(50, 150, wMP, hMP);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(24);
    text(int(wMP) + "/" + int(w), 160, 170);
  }
  
  void textGlasses() {
    glasses += 0.01;
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(24);
    text("Очки: " + int(glasses), width-100, 50);
  }
}

// Текст у маны и хп 
