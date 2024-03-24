import 'package:book_app/Features/search/presebtation/views/search_view.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo2,
            height: 60,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchView());
            },
            icon: const Icon(
              color: kIconColor,
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
