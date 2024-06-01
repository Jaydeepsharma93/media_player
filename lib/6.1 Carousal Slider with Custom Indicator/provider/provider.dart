import 'package:flutter/material.dart';

class CarouselSliderProvider extends ChangeNotifier{
  int index = 0;

  void Index(int index) {
    this.index = index;
    notifyListeners();
  }
}