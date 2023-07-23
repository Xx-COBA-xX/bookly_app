// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/featuers/home/presentaion/view/widgets/book_raiting.dart';
import 'package:bookly_app/featuers/home/presentaion/view/widgets/featuerd_list_items.dart';

import 'box_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
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
          height: 37,
        ),
        const BoxAciton()
      ],
    );
  }
}
