import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/Features/home/presentation/views/widgets/cistom_book_image.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/app_routes.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksViewItem extends StatelessWidget {
  const NewestBooksViewItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        book.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtSectraFine),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      book.volumeInfo.authors?[0] ?? '',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: book.volumeInfo.averageRating?.round() ?? 0,
                          count: book.volumeInfo.ratingsCount ?? 0,
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
