import 'package:get_it/get_it.dart';
import 'package:todo_list/data/datasources/auth/auth_datasource.dart';
import 'package:todo_list/data/repositories_impl/auth_repository_impl.dart';
import 'package:todo_list/domain/repositories/auth_repository.dart';
import 'package:todo_list/domain/use_case/auth_usecase.dart';

GetIt locator = GetIt.instance;

void setup() {
  // usecase
  locator.registerLazySingleton<AuthUsecase>(() => AuthUsecase(locator<AuthRepository>()));

  // repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  // data source
  locator.registerLazySingleton<AuthDatasource>(() => AuthDatasource());
}
