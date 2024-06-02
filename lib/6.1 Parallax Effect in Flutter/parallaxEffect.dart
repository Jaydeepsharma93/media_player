import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ParallaxEffect extends StatelessWidget {
  const ParallaxEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context, index, realIndex) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: AssetImage('assets/img/$index.gif'),fit: BoxFit.fill)
            ),
          ),
          options: CarouselOptions(
              height: 650,
              viewportFraction: 0.75,
              animateToClosest: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true),
        ),
      ),
    );
  }

}
