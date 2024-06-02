import 'dart:math';
import 'package:flutter/material.dart';

List<LinearGradient> gradients =
    List.generate(6, (index) => getRandomGradient());

LinearGradient getRandomGradient() {
  return LinearGradient(
    colors: [getRandomColor(), getRandomColor(), getRandomColor()],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

Color getRandomColor() {
  final Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}