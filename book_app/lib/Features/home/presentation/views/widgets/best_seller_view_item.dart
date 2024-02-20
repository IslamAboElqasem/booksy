import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/constant.dart';
import 'package:book_app/core/utilits/assets.dart';
import 'package:book_app/core/utilits/styles.dart';
import 'package:flutter/material.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key, required this.kItem});

  final int kItem;

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
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          AssetsData.mapOfBestSeller.keys.toList()[kItem])),
                ),
              )),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 55,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  AssetsData.mapOfBestSeller.values.toList()[kItem][0],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                AssetsData.mapOfBestSeller.values.toList()[kItem][1],
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    AssetsData.mapOfBestSeller.values.toList()[kItem][2],
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  BookRating(
                    kItem: kItem,
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

class VerticaBestSellerlListView extends StatelessWidget {
  const VerticaBestSellerlListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
