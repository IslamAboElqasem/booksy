import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.searchRepo) : super(SearchCubitInitial());
  final SearchRepo searchRepo;

  Future<void> featchResultOfSearch() async {
    emit(SearchCubitLoading());
    var result = await searchRepo.featchResultOfSearch();

    result.fold((failure) {
      emit(SearchCubitFailure(failure.msgError));
    }, (books) {
      emit(SearchCubitSuccess(books));
    });
  }
}
