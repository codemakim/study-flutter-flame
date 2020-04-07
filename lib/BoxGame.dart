import 'dart:ui';

import 'package:flame/game/game.dart';

class BoxGame extends Game {
  Size screenSize;

  @override
  void render(Canvas canvas) {
    // background
    Rect bgRect = Rect.fromLTRB(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Color(0xff000000);
    canvas.drawRect(bgRect, bgPaint);

    // target box
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    Rect boxRect = Rect.fromLTWH(screenCenterX-75, screenCenterY-75, 150, 150);
    Paint boxPaint = Paint();
    boxPaint.color = Color(0xffffffff);
    canvas.drawRect(boxRect, boxPaint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  void resize(Size size) {
    screenSize = size;
    super.resize(size);
  }

}