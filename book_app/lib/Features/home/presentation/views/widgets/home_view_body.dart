import 'package:book_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_app/core/utilits/Styles.dart';
import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

import 'books_listview_horizontal.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookListViewHorizontal(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerViewItem(),
        ],
      ),
    );
  }
}

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.5 / 4.1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.listOfBooks[5])),
                ),
              )),
        ],
      ),
    );
  }
}
