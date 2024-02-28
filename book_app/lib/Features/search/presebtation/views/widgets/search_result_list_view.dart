import 'package:book_app/Features/home/presentation/views/widgets/best_seller_view_item.dart';
import 'package:flutter/material.dart';

class SearchResulListtView extends StatelessWidget {
  const SearchResulListtView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerViewItem(),
        );
      },
    );
  }
}
