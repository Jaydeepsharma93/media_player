import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '6.1 Carousal Slider with Custom Indicator/provider/provider.dart';
import '6.1 Carousal Slider with Custom Indicator/slider&custom.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => CarouselSliderProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SilserCustom(),
    );
  }
}
