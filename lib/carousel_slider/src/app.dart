import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderApp extends StatelessWidget {
  const CarouselSliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page();

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blueAccent,
      Colors.redAccent,
    ];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CarouselSlider(
            items: colors
                .map(
                  (color) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 120,
                      child: ColoredBox(color: color),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 0.37,
              autoPlay: true,
              height: 120,
              padEnds: false,
            ),
          ),
        ),
      ),
    );
  }
}
