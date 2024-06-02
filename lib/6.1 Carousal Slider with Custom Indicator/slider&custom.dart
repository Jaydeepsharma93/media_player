import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player/6.1%20Carousal%20Slider%20with%20Custom%20Indicator/provider/provider.dart';
import 'package:provider/provider.dart';
import 'Random gradient/randomgradient.dart';

class SilserCustom extends StatelessWidget {
  const SilserCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient:
                gradients[Provider.of<CarouselSliderProvider>(context,listen: true).index]),
        child: CarouselSlider.builder(
          options: CarouselOptions(
              onPageChanged: (index, reason) =>
                  Provider.of<CarouselSliderProvider>(context,listen: false)
                      .Index(index),
              height: 500,
              viewportFraction: 0.75,
              animateToClosest: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true),
          itemCount: 6,
          itemBuilder: (context, index, realIndex) => Container(
            decoration: BoxDecoration(
                gradient: getRandomGradient(),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/img/$index.jpg'),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}