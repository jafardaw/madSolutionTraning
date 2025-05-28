// import 'package:dio/dio.dart';

// abstract class Failure {
//   final String errorMessage;

//   Failure(this.errorMessage);
// }

// class ServerFailure extends Failure {
//   ServerFailure(super.errorMessage);
//   factory ServerFailure.fromDioException(DioException dioException) {
//     switch (dioException.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('Connection Time Out');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure('send Timeout');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure('receive Timeout');
//       case DioExceptionType.badCertificate:
//         return ServerFailure('bad Certificate');
//       case DioExceptionType.badResponse:
//         return ServerFailure.frombadResponse(
//             dioException.response!.statusCode!, dioException.response!.data);
//       case DioExceptionType.connectionError:
//         return ServerFailure('Connection Error');
//       case DioExceptionType.unknown:
//         if (dioException.message!.contains('Socket Exception')) {
//           return ServerFailure('No Internet connection');
//         }
//         return ServerFailure('Unexception Error,Please try again ');

//       case DioExceptionType.cancel:
//         return ServerFailure('Request to ApiServer was cancel');
//       default:
//         return ServerFailure('Opps There was an Error..!  Please try again');
//     }
//   }
//   factory ServerFailure.frombadResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure('Your request not found ..!  Please try later');
//     } else if (statusCode == 500) {
//       return ServerFailure('Internal Server error ..!  Please try later');
//     } else {
//       return ServerFailure('Opps There was an Error..!  Please try again');
//     }
//   }
// }
