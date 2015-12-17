// プレイヤーのクラス
class Player extends Sprite {

  // コンストラクタ
  Player(int x, int y) {
    super(x, y, "player.png");
  }

  // 移動
  void move() {
    // マウスの一に移動
    x = mouseX;
    y = mouseY;
  }
}