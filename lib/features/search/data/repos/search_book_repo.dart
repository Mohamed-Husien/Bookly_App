import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchBookRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String category});
}
