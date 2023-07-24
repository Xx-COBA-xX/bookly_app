import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/featuers/search/presentaion/view/widgets/custom_search_text_filed.dart';
import 'package:bookly_app/featuers/search/presentaion/view/widgets/search_resutl_list_view.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: SearchResultListView(),
        )
      ],
    );
  }
}
