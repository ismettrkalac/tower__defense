import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

class Enemy extends SpriteComponent with HasGameRef<MyGame> {
  // Düşmanın temel özellikleri
  @override
  Future<void> onLoad() async {
    // Düşman sprite'ını yükleyin
  }

  @override
  void update(double dt) {
    // Düşmanın güncelleme mantığı, eğer varsa
  }
}

class EnemyManager {
  final MyGame gameRef;

  EnemyManager(this.gameRef);
  
  void spawnEnemy() {
    // Yeni bir düşman yarat
    Enemy enemy = Enemy()
      ..position = Vector2(gameRef.size.x, (gameRef.size.y * Random().nextDouble()))
      ..size = Vector2(48.0, 60.0); // Örnek boyutlar
    // Düşmanı oyun ekranına ekleyin
    gameRef.add(enemy);
  }
}

class MyGame extends FlameGame {
  late EnemyManager enemyManager;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    // ...
    enemyManager = EnemyManager(this);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Belirli bir koşul altında düşman spawnlama fonksiyonunu çağır
    if (shouldSpawnEnemy) {
      enemyManager.spawnEnemy();
    }
  }
}

bool get shouldSpawnEnemy {
  // Düşman spawnlanıp spawnlanmayacağını belirleyen mantık
  return Random().nextDouble() < 0.1; // Örnek bir olasılık
}