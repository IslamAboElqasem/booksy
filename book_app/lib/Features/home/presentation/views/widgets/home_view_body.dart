import 'package:book_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_app/core/utilits/Styles.dart';
import 'package:flutter/material.dart';

import 'books_listview_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        BookListViewHorizontal(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
