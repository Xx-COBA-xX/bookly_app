import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, this.index = 0, required this.imageUrl});
  final int index;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: index == 4 ? 24 : 8, left: index == 0 ? 24 : 0),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
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
