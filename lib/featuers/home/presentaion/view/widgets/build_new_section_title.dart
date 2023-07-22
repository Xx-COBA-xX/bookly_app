import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
      child: Text(
        title,
        style: Styles.textStyle18,
      ),
    );
  }
}
