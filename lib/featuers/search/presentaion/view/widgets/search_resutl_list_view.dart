import 'package:flutter/material.dart';

import '../../../../home/presentaion/view/widgets/best_seller_list_view_itmes.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BookViewItem();
        });
  }
}
