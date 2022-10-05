class Player {
  private int x, y;
  private float size;
  private color col, colWeigth = #BD11ED;
  private int sizeWeight = 4;
  
  
  Player(int x, int y, color col) {
    this.x = x;
    this.y = y;
    this.col = col;
  }
  
  void display() {
    fill(col);
    stroke(#BD11ED);
    strokeWeight(sizeWeight);
    ellipse(x, y, size, size);
  }
  
  void update() {
    x = mouseX;
    y = mouseY;
    removeXP(0.1);
    addMP(0.1);
    attack();
    nowSize();
  }
  
  void removeXP(float rXP) {
    ince.wXP -= rXP;
  }
  
  void removeMP(float rMP) {
    ince.wMP -= rMP;
  }
  
  void addXP(float rXP) {
    // Проверяем, не пересекли ли мы границы бокса
    if ((ince.wXP <= (ince.w - rXP)) && (ince.wXP >= 0)) {
      ince.wXP += rXP;
    }
  }
  
  void addMP(float rMP) {
    // Проверяем, не пересекли ли мы границы бокса
    if ((ince.wMP <= (ince.w - rMP)) && (ince.wMP >= 0)) {
      ince.wMP += rMP;
    }
  }
  
  void nowSize() {
    size = ince.wXP;
  }
  
  void attack() {
    if (((x >= (enemy.x - size)) && (x <= (enemy.x + size))) && ((y >= (enemy.y - size)) && (y <= (enemy.y + size)))) {
      if (mousePressed) {
        if (mouseButton == LEFT) {
          if (ince.wMP > 20) {
            enemy.rebirth();
            ince.glasses += 5;
            ince.wMP -= 20;
          }
        }
      }
    }
  }
}
