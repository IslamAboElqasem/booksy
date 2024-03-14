import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:book_app/Features/search/presebtation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
