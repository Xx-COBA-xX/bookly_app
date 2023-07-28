import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'build_new_section_title.dart';
import 'custom_app_bar.dart';
import 'featuerd_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatuerdList(),
              SizedBox(
                height: 30,
              ),
              BuildNewSectionTitle(
                title: "Best Seller",
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
