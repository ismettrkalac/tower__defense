import 'package:flame/components.dart';
import 'package:tower__defense/game.dart';


class Hero extends SpriteAnimationComponent with HasGameRef<MyGame> {
  // Karakterin sağlık, hız gibi özellikleri
  double health = 100.0;
  double speed = 200.0;

  @override
  Future<void> onLoad() async {
    // Karakter sprite'ını ve animasyonlarını yükleyin
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Karakterin her frame'de güncellenen mantığı (hareket vs.)
  }
}