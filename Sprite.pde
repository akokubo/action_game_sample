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

    resultX = (conditionXA(this, b) || conditionXC(this, b)) && conditionXB(this, b);
    resultX = resultX || ((conditionXE(this, b) || conditionXF(this, b)) && conditionXD(this, b));
    resultY = (conditionYA(this, b) || conditionYC(this, b)) && conditionYB(this, b);
    resultY = resultY || ((conditionYE(this, b) || conditionYF(this, b)) && conditionYD(this, b));

    return resultX && resultY;
  }

  // 衝突判定で使う関数
  boolean conditionXA(Sprite a, Sprite b) {
    return ((a.x - a.width / 2) <= (b.x - b.width / 2));
  }

  boolean conditionXB(Sprite a, Sprite b) {
    return ((b.x - b.width / 2) <= (a.x + a.width / 2));
  }

  boolean conditionXC(Sprite a, Sprite b) {
    return ((a.x + a.width / 2) <= (b.x + b.width / 2));
  }

  boolean conditionXD(Sprite a, Sprite b) {
    return ((a.x - a.width / 2) <= (b.x + b.width / 2));
  }

  boolean conditionXE(Sprite a, Sprite b) {
    return ((b.x + b.width / 2) <= (a.x + a.width / 2));
  }

  boolean conditionXF(Sprite a, Sprite b) {
    return ((b.x - b.width / 2) <= (a.x - a.width / 2));
  }


  boolean conditionYA(Sprite a, Sprite b) {
    return ((a.y - a.height / 2) <= (b.y - b.height / 2));
  }

  boolean conditionYB(Sprite a, Sprite b) {
    return ((b.y - b.height / 2) <= (a.y + a.height / 2));
  }

  boolean conditionYC(Sprite a, Sprite b) {
    return ((a.y + a.height / 2) <= (b.y + b.height / 2));
  }

  boolean conditionYD(Sprite a, Sprite b) {
    return ((a.y - a.height / 2) <= (b.y + b.height / 2));
  }

  boolean conditionYE(Sprite a, Sprite b) {
    return ((b.y + b.height / 2) <= (a.y + a.height / 2));
  }

  boolean conditionYF(Sprite a, Sprite b) {
    return ((b.y - b.height / 2) <= (a.y - a.height / 2));
  }
}