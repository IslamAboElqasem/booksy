import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

import 'cistom_list_view_item.dart';

class BookListViewHorizontal extends StatelessWidget {
  const BookListViewHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: AssetsData().getNumberOfBooks(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomListViewItem(
                kItyem: index,
              ));
        },
      ),
    );
  }
}
