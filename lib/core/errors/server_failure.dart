import 'package:dio/dio.dart';

import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection request timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout in connection with API server');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout in connection with API server');
      case DioErrorType.badCertificate:
        return ServerFailure('can’t verify the SSL certificate');
      case DioErrorType.badResponse:
        return ServerFailure.fromStatusCode(
            dioError.response!.statusCode!, dioError.response);
      case DioErrorType.cancel:
        return ServerFailure('Request to Server was canceld');
      case DioErrorType.connectionError:
        return ServerFailure('Connection request timeout');
      case DioErrorType.unknown:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromStatusCode(int statusCode, dynamic response) {
    switch (statusCode) {
      case 401:
        return ServerFailure('You are not authorized');
      case 404:
        return ServerFailure('Not Found');
      case 500:
        return ServerFailure('Internal Server Error');
      case 429:
        return ServerFailure('Too many requests');
    }
    return ServerFailure('Unexpected error occurred');
  }
}
