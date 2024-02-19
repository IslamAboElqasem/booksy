import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.kItyem});

  final int kItyem;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.listOfBooks[kItyem])),
          ),
        ));
  }
}
