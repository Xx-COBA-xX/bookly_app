// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({
    Key? key,
    required this.errMassage,
  }) : super(key: key);

  final String errMassage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMassage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
