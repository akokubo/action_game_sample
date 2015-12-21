// スプライトのクラス
class Sprite {
  // フィールド
  float x; // x座標
  float y; // y座標
  PImage img; // 画像
  int width; // 幅
  int height; // 高さ

  // コンストラクタ
  Sprite(float x, float y, String filename) {
    this.x = x;
    this.y = y;
    img = loadImage(filename);

    // 横幅と高さを求める
    width = img.width;
    height = img.height;
  }

  // メソッド
  // 表示
  void display() {
    imageMode(CENTER);
    image(img, x, y);
  }

  // 移動
  void move() {
  }

  // 衝突判定
  boolean isOverlap(Sprite b) {
    boolean resultX, resultY; // x, y方向の衝突判定

    resultX = abs(this.x - b.x) < (this.width + b.width) / 2;
    resultY = abs(this.y - b.y) < (this.height + b.height) / 2;
    return resultX && resultY;
  }
}