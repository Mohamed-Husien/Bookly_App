import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(
                    Assets.imagesTesteren,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Column(),
        ],
      ),
    );
  }
}
