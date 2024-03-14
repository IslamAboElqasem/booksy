import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_cubit_state.dart';

class SearchCubit extends Cubit<SearchCubitState> {
  SearchCubit(this.homeRepo) : super(SearchCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(SearchCubitLoading());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(SearchCubitFailure(failure.msgError));
    }, (books) {
      emit(SearchCubitSuccess(books));
    });
  }
}
