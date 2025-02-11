import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String category}) async {
    emit(SearchBooksLoading());
    final result = await searchRepo.fetchSearchedBooks(category: category);

    result.fold(
      (failure) => emit(SearchBooksFailure(errMessage: failure.errorMessage)),
      (books) => emit(SearchBooksSuccess(books: books)),
    );
  }
}
