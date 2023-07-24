// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/featuers/home/presentaion/view/widgets/similar_book_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SimilerBookSection(),
            ],
          ),
        )
      ],
    );
  }
}
