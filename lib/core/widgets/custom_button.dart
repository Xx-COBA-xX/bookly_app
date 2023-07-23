import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.borderRadius,
    required this.backgroundColor,
    required this.fontColor,
    this.fontSize = 20,
    required this.text,
  }) : super(key: key);

  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color fontColor;
  final double fontSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        color: backgroundColor,
        child: Text(
          text,
          style: Styles.textStyle20.copyWith(
              fontSize: fontSize,
              color: fontColor,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
  }
}
