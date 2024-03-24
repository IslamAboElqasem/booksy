import 'package:book_app/Features/home/presentation/views/widgets/newest_books_view_item.dart';
import 'package:book_app/Features/search/presebtation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';

Widget searchResultListView(SearchCubitSuccess state, int index,
    {required String query}) {
  return query == ''
      ? NewestBooksViewItem(book: state.books[index])
      : state.books[index].volumeInfo.title!.startsWith(query)
          ? NewestBooksViewItem(book: state.books[index])
          : const SizedBox(
              height: 1,
            );
}
