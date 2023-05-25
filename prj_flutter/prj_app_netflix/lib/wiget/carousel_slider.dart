import 'package:flutter/material.dart';

class CarouselSliderWiget extends StatelessWidget {
  final List<Widget> items;
  final int activeIndex;
  final Function(int) onPageChanged;

  CarouselSliderWiget({
    required this.items,
    this.activeIndex = 0,
    required this.onPageChanged, required bool autoplay, required double viewportFraction, required double aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        onPageChanged: onPageChanged,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
      ),
    );
  }
}