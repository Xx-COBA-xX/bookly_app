import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(right: 24, left: 24, top: 40, bottom: 30),
        child: Row(
          children: [
            Image.asset(
              AssetsData.logo,
              height: 20,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.search),
            )
          ],
        ),
      ),
    );
  }
}
