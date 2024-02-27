import 'package:dio/dio.dart';

abstract class Failure {
  final String msgError;

  const Failure(this.msgError);
}

class ServerFailure extends Failure {
  ServerFailure(super.msgError);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Recieve tmeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponce(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected error, please try again later');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
    }
  }
  factory ServerFailure.fromResponce(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found, Please try again');
    } else if (statusCode == 500) {
      return ServerFailure('Internet Server error, Please try again larer');
    } else {
      return ServerFailure('Opps there was an Error, Please try again');
    }
  }
}
