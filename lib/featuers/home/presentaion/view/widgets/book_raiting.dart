// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.raiting,
    required this.count,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final num raiting;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          CupertinoIcons.star_fill,
          color: Colors.amber,
          size: 20,
        ),
        const SizedBox(
          width: 3.2,
        ),
        Text(
          raiting.toString(),
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "($count)",
            style: Styles.textStyle14,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
