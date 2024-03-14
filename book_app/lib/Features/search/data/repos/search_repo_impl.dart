import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/search/data/repos/search_repo.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utilits/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoIpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoIpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchResultOfSearch() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          books.add(BookModel.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
