import 'package:book_app/core/utilits/assets.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.kItem});
  final int kItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          AssetsData.mapOfBestSeller.values.toList()[kItem][3],
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          AssetsData.mapOfBestSeller.values.toList()[kItem][4],
          style: Styles.textStyle14.copyWith(color: const Color(0xFF707070)),
        )
      ],
    );
  }
}
