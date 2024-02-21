import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

import 'cistom_list_view_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.16),
            child: const CustomListViewItem(
              kItyem: 6,
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Harry Potter and the Philosopher’s Stone',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'J.k. Rowling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 18,
          ),
          const BookRating(
            kItem: 0,
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
