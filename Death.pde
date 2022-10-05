class Death {
  private boolean death;
  
  Death() {
    death = false;
  }
  
  void display() {
    if (death == true) {
      background(0);
      fill(#FF0000);
      textAlign(CENTER, CENTER);
      textSize(72);
      text("Вы проиграли. Кликните чтобы перезапустить игру", width/2, height/2);
    }
  }
  
  void update() {
    if (ince.wXP <= 0) {
      death = true;
      if (keyPressed || mousePressed) {
        death = false;
        ince.wXP = ince.w;
        ince.wMP = ince.w;
        ince.glasses = 0;
      }
    }
  }
}

// При нажатии при игре востанавливает хп. Нужно исправить
