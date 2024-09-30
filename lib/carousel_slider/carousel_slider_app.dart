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
    return Scaffold(
      body: CarouselSlider(
        items: const [
          SizedBox(
            height: 240,
            width: 160,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(
            height: 240,
            width: 160,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(
            height: 240,
            width: 160,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(
            height: 240,
            width: 160,
            child: ColoredBox(color: Colors.black),
          ),
        ],
        options: CarouselOptions(
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}
