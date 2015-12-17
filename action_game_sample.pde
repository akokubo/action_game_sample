boolean isPlaying; // プレイ中/ゲームオーバーのフラグ
int screenWidth, screenHeight; // 画面の大きさを入れる変数
Sprite[] enemies; // 敵
Sprite player; // プレイヤー

void setup() {
  // 画面サイズ
  size(320, 320);
  screenWidth = width;
  screenHeight = height;

  enemies = new Enemy[5];

  enemies[0] = new Enemy(200, 260);
  enemies[1] = new Enemy(300, 210);
  enemies[2] = new Enemy(140, 160);
  enemies[3] = new Enemy(10, 110);
  enemies[4] = new Enemy(250, 60);

  player = new Player(100, 100);

  isPlaying = true;
}

void draw() {
  if (isPlaying) {
    background(204);
    // 敵の移動
    for (int i = 0; i < enemies.length; i++) {
      enemies[i].move();
    }
    // プレイヤーの移動
    player.move();

    // 当たり判定
    for (int i = 0; i < enemies.length; i++) {
      if (player.isOverlap(enemies[i])) {
        isPlaying = false;
      }
    }
  } else {
    // ゲームーオーバー時の背景
    background(255, 0, 0);
  }

  // 敵とプレイヤーを表示
  for (int i = 0; i < enemies.length; i++) {
    enemies[i].display();
  }
  player.display();
}