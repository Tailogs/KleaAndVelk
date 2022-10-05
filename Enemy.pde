class Enemy {
  private int x, y, size;
  private float speed, damage = 5;;
  private color col, colWeigth = 200;
  private int sizeWeight = 4;
  
  Enemy(int x, int y, int size, color col) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.col = col;
    this.speed = 5;
  }
  
  void display() {
    fill(col);
    stroke(colWeigth);
    strokeWeight(sizeWeight);
    ellipse(x, y, size, size);
  }
  
  void update() {
    tracking();
    damage();
  }

  // Метод слежения врага за игроком
  void tracking() {
    if (x < player.x)
      x += speed;
    if (x > player.x)
      x -= speed;
    if (y < player.y)
      y += speed;
    if (y > player.y)
      y -= speed;
  }
  
  // Метод, котораяя наносит урон игроку
  void damage() {
    if (((x >= (player.x - (player.size / 2))) && (x <= (player.x + (player.size / 2)))) && ((y >= (player.y - (player.size / 2))) && (y <= (player.y + (player.size / 2))))) {
        player.removeXP(damage); // Метод наносит урон игроку;
      }
  }
  
  void rebirth() {
    enemy.x = int(random(player.x+500, width-size));
    enemy.y = int(random(0+size, height-size));
  }
  
  void addEnemy() {
    // Гиблое дело, ведь враг может быть только один.
    // Надо бы решить это проблему когда-нибудь.
  }
  
  //void removeXP(float rXP) {
  //  ince.wXP -= rXP;
  //}
  
  //void removeMP(float rMP) {
  //  ince.wMP -= rMP;
  //}
}
