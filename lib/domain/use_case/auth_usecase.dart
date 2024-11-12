import 'package:dartz/dartz.dart';
import 'package:todo_list/domain/repositories/auth_repository.dart';

class AuthUsecase {
  final AuthRepository repositoryAPI;
  AuthUsecase(this.repositoryAPI);

  // Future<Either<Failure, HTTPModel>> getSurah() {
  //   return repositoryAPI.getSurah();
  // }

  // Future<Either<Failure, HttpDetailModel>> getDetailSurah({required int nomor}) {
  //   return repositoryAPI.getDetailSurah(nomor: nomor);
  // }
}
