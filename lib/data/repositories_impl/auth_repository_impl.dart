import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:todo_list/data/datasources/auth/auth_datasource.dart';

import 'package:todo_list/domain/repositories/auth_repository.dart';
import 'package:todo_list/injection.dart';

class AuthRepositoryImpl extends AuthRepository {
  final quranDatasource = locator<AuthDatasource>();

  // @override
  // Future<Either<Failure, HTTPModel>> getSurah() async {
  //   try {
  //     var result = await quranDatasource.getSurah();
  //     return right(result);
  //   } on DioException catch (e) {
  //     return left(ConnectionFailure(e.toString()));
  //   } catch (e) {
  //     return left(ResponseFailure(e.toString()));
  //   }
  // }

  // @override
  // Future<Either<Failure, HttpDetailModel>> getDetailSurah({required int nomor}) async {
  //   try {
  //     var result = await quranDatasource.getDetailSurah(nomor: nomor);
  //     return right(result);
  //   } on DioException catch (e) {
  //     return left(ConnectionFailure(e.toString()));
  //   } catch (e) {
  //     return left(ResponseFailure(e.toString()));
  //   }
  // }
}
