import 'package:flutter/material.dart';

class SlideText extends StatelessWidget {
  const SlideText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: const Text(
        textAlign: TextAlign.center,
        "Read Free books",
      ),
    );
  }
}
