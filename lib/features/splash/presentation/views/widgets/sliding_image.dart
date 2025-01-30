import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SlidingImageAnimation extends StatelessWidget {
  const SlidingImageAnimation({
    super.key,
    required this.slidingImageAnimation,
  });

  final Animation<Offset> slidingImageAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        //i used this to rebuild the SlideTransition when the slidingImageAnimation change
        animation: slidingImageAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: slidingImageAnimation,
              child: Image.asset(Assets.imagesLogo));
        });
  }
}
