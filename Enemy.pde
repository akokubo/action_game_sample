// エネミーのクラス
class Enemy extends Sprite {
  float speed;

  // コンストラクタ
  Enemy(int x, int y) {
    super(x, y, "enemy.png");
    speed = 2;
  }

  // 移動
  void move() {
    x = x + speed;

    // 画面の端に到達したら、速度を逆向きに
    if (x + width / 2 > screenWidth) {
      speed = -abs(speed);
    } else if (x - width / 2 < 0) {
      speed = abs(speed);
    }
  }
}