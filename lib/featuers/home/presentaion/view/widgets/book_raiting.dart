import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          "4.5",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "(2693)",
          style: Styles.textStyle14,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
