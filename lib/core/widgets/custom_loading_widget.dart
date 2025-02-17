import 'package:bookly_app/core/widgets/custom_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BookListViewItemSkeleton extends StatelessWidget {
  const BookListViewItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Skeletonizer(enabled: true, child: CustomLoadingItem()),
        );
      },
    );
  }
}
