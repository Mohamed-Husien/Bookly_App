import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesTesteren,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
