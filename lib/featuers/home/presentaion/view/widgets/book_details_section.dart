import 'package:bookly_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_raiting.dart';
import 'box_action.dart';
import 'featuerd_list_items.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .24),
          child: const CustomBookImage(
            imageUrl: kImageUrl,
          ),
        ),
        const SizedBox(
          height: 37,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontFamily: "Gt Sectra Fine",
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle20.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 20,
        ),
        const BookRaiting(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const BoxAciton(),
      ],
    );
  }
}
