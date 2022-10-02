import 'package:appwrite/appwrite.dart';
import 'package:email_validator/email_validator.dart';
import 'failure.dart';

class Utils {
  static getFailureOnAppwriteException(AppwriteException exception) {
    switch (exception.code) {
      case 400:
      case 409:
        return RequestFailure('[REQUEST FAILURE]: ${exception.message}');
      case 401:
      case 403:
        return AuthorityFailure('[AUTH FAILURE]: ${exception.message}');
      case 404:
      case 500:
      case 503:
      default:
        return ServerFailure('[SERVER FAILURE]: ${exception.message}');
    }
  }

  static String? validateNotEmpty(String? value) =>
      value!.isEmpty ? 'Field cannot be empty' : null;

  static String? validateEmail(String? value) => value!.isEmpty
      ? 'Field cannot be empty'
      : !EmailValidator.validate(value)
          ? 'Email is invalid'
          : null;

  static String? validatePassword(String value) => value.isEmpty
      ? 'Field cannot be empty'
      : !RegExp(r'^.{8,}').hasMatch(value)
          ? 'Password must be at least 8 characters'
          : !RegExp(r'^.*[a-zA-Z].*').hasMatch(value)
              ? 'Password must contain letter'
              : !RegExp(r'^.*[0-9].*').hasMatch(value)
                  ? 'Password must contain number'
                  : !RegExp(r'^.*[!@#\$&*~].*').hasMatch(value)
                      ? 'Password must contain special character'
                      : null;
}

enum RequestStatus { initial, loading, success, failure }

extension RequestStatusX on RequestStatus {
  bool get isInitial => this == RequestStatus.initial;
  bool get isLoading => this == RequestStatus.loading;
  bool get isSuccess => this == RequestStatus.success;
  bool get isFailure => this == RequestStatus.failure;
}
