import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier{
  Color _backgcolor=Colors.white;
  Color get bgcolor=>_backgcolor;

  void changeColor(){
    _backgcolor=Color(Random().nextInt(0xffffffff));
    notifyListeners();
  }
}