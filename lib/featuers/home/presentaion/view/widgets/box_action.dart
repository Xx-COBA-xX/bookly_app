import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BoxAciton extends StatelessWidget {
  const BoxAciton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99 \$",
              backgroundColor: Colors.white,
              fontColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free Preview",
              fontSize: 16,
              backgroundColor: Color(0xffEF8262),
              fontColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
