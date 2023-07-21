import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeatuerdListItems extends StatelessWidget {
  const FeatuerdListItems({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: index == 4 ? 24 : 8, left: index == 0 ? 24 : 0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AssetsData.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
