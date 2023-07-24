import 'package:bookly_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
