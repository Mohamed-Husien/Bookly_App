import 'package:bookly_app/features/home/presentation/view/widgets/custom_featured_books_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomFeaturedBooksLoadingWidget extends StatelessWidget {
  const CustomFeaturedBooksLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Skeletonizer(
                  enabled: true, child: CustomFeaturedBooksLoadingItem()),
            );
          }),
    );
  }
}
