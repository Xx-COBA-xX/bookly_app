import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/featuers/home/presentaion/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featuerd_list_items.dart';

class FeatuerdList extends StatelessWidget {
  const FeatuerdList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CustomBookImage(
                  index: index,
                  imageUrl:  state.books[index].volumeInfo.imageLinks!.thumbnail,
                );
              }),
        );
      } else if (state is FeaturedBooksFialuer) {
        return CustomError(errMassage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
