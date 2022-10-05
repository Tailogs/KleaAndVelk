Player player;
Food food;
Interface ince;
Poison poison;
Death death;
Enemy enemy;

void setup() {
  fullScreen();
  player = new Player(width/2, height/2, #DEDEDE);
  food = new Food();
  ince = new Interface();
  poison = new Poison();
  death = new Death();
  enemy = new Enemy(width/2+100, height/2+100, 50, #F71B4F);
}

void draw() {
  background(0);
  food.display();
  food.update();
  poison.display();
  poison.update();
  player.display();
  player.update();
  enemy.display();
  enemy.update();
  ince.display();
  ince.update();
  death.display();
  death.update();
}
