import 'package:bookly_app/features/home/presentation/view/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contxt, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}
