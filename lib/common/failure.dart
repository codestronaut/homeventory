import 'package:equatable/equatable.dart';

/// [Common]: Failure
/// Used to handling error, will be returned when exception raised
abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class RequestFailure extends Failure {
  const RequestFailure(String message) : super(message);
}

class AuthorityFailure extends Failure {
  const AuthorityFailure(String message) : super(message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}
