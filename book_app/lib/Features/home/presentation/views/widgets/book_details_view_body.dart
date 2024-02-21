import 'package:book_app/Features/home/presentation/views/widgets/custom_appbar_book_details.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width * 0.15),
            child: const CustomListViewItem(
              kItyem: 6,
            ),
          ),
        ],
      ),
    );
  }
}
