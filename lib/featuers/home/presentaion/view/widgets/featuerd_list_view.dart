import 'package:flutter/material.dart';

import 'featuerd_list_items.dart';

class FeatuerdList extends StatelessWidget {
  const FeatuerdList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomBookImage(
              index: index,
            );
          }),
    );
  }
}