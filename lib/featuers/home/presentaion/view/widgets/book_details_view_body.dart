import 'package:bookly_app/featuers/home/presentaion/view/widgets/featuerd_list_items.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImage(),
        )
      ],
    );
  }
}
