class Food {
  private int x, y, size = 20;
  private color col = #E2E329;
  
  Food() {
    x = int(random(size, int(width)-size));
    y = int(random(size, int(height)-size));
  }
  
  void display() {
    fill(col);
    //stroke(#BD11ED);
    //strokeWeight(sizeWeight);
    noStroke();
    ellipse(x, y, size, size);
  }
  
  void update() {
    // Условие выполниться, когда игрок приблизиться к еде
    if (((x >= (player.x - (player.size / 2))) && (x <= (player.x + (player.size / 2)))) && ((y >= (player.y - (player.size / 2))) && (y <= (player.y + (player.size / 2))))) {
      locationRandom();
      player.addXP(20);
      ince.glasses += 3;
    }
  }
  
  // Процедура дли рандомной генерации координат
  void locationRandom() {
    this.x = int(random(size, int(width)-size));
    this.y = int(random(size, int(height)-size));
  }
}
