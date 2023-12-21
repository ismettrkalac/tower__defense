import 'package:flame/components.dart';
import 'package:tower__defense/game.dart';


class Tower extends SpriteComponent with HasGameRef<MyGame> {
  double health = 100;

  @override
  Future<void> onLoad() async {
    // Kale resmini yükle
    sprite = await gameRef.loadSprite('tower.png');
    // Can barını ekle
    add(HealthBar());
    // ...
  }
}

class HealthBar extends PositionComponent {
  // Can barının görünümünü ve mantığını yönet
}
