import 'package:book_app/Features/search/presebtation/views/widgets/custom_search_textfield.dart';
import 'package:book_app/Features/search/presebtation/views/widgets/search_result_list_view.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResulListtView()),
        ],
      ),
    );
  }
}
