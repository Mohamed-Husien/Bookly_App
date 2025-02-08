import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                  imageUrl:
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.pinterest.com%2Fpin%2F996702961264533371%2F&psig=AOvVaw3K4JH7-P_dCOGXscBku3fY&ust=1739082609630000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKjVyOC5s4sDFQAAAAAdAAAAABAE'),
            );
          }),
    );
  }
}
