import 'dart:ui';

import 'package:flame/game/game.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BoxGame extends Game {
  Size screenSize;
  bool hasWon = false;

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

    // change win state
    if(hasWon) {
      boxPaint.color = Colors.tealAccent;
    } else {
      boxPaint.color = Colors.white;
    }

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
  
  void onTapDown(TapDownDetails d) {
    double screenCenterX = screenSize.width / 2;
    double screenCenterY = screenSize.height / 2;
    if(d.globalPosition.dx >= screenCenterX - 75 && d.globalPosition.dx <= screenCenterX + 75
    && d.globalPosition.dy >= screenCenterY - 75 && d.globalPosition.dy <= screenCenterY + 75
    ) {
      hasWon = true;
    } else  {
      hasWon = false;
    }
  }

}