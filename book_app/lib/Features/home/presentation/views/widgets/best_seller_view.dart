import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';
import 'best_seller_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: AssetsData().getNumberOfBestSellerBooks(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSellerViewItem(
            kItem: index,
          ),
        );
      },
    );
  }
}
