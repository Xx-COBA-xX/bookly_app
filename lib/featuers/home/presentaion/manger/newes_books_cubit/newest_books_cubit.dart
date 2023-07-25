// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());

  final HomeRepository homeRepository;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();

    result.fold((fialuer) {
      emit(NewestBooksFialuer(fialuer.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
