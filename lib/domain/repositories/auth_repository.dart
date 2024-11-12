import 'package:dartz/dartz.dart';

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(super.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class ResponseFailure extends Failure {
  const ResponseFailure(super.message);
}

abstract class AuthRepository {
  // Future<Either<Failure, HTTPModel>> getSurah();

  // Future<Either<Failure, HttpDetailModel>> getDetailSurah({required int nomor});
}
