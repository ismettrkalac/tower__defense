import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    // Arka planı yükle
    await setBackground('background.png');
    // Kaleleri yerleştir
  }

  Future<void> setBackground(String fileName) async {
    // Arka plan resmini yükle
    final image = await Flame.images.load(fileName);
    // Arka planı temsil eden bir component oluştur
    final background = SpriteComponent.fromImage(image);
    // Arka planı ekranın tamamına yay
    background.width = size.x;
    background.height = size.y;
    // Ekranın en arka planına ekle
    add(background);
  }
}
