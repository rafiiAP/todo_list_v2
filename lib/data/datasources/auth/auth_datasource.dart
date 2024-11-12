import 'package:dio/dio.dart';
import 'package:todo_list/components/function/main_function.dart';
import 'package:todo_list/data/constant/config.dart';
import 'package:todo_list/data/model/response_model.dart';

class AuthDatasource {
  Future<ResponseModel> register({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      String response = await C.sendHTTPost(
        url: '${AppConfig.baseURL}/register',
        requestName: 'register',
        request: {
          "email": email,
          "password": password,
          "username": username,
        },
        useAuth: false,
      );

      return ResponseModel();
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<ResponseModel> login({
    required String password,
    required String username,
  }) async {
    try {
      String response = await C.sendHTTPost(
        url: '${AppConfig.baseURL}/login',
        requestName: 'login',
        request: {
          "password": password,
          "username": username,
        },
      );
      C.showLog(log: '--$response');
      return ResponseModel();
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<ResponseModel> getCheckList() async {
    try {
      String response = await C.dioGet(
        url: '${AppConfig.baseURL}/checklist',
        requestName: 'getCheckList',
      );
      C.showLog(log: '--$response');
      return ResponseModel();
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<ResponseModel> createCheckList({
    required String checklist,
    required String username,
  }) async {
    try {
      String response = await C.sendHTTPost(
        url: '${AppConfig.baseURL}/checklist',
        requestName: 'createCheckList',
        request: {
          "name": checklist,
        },
      );
      C.showLog(log: '--$response');
      return ResponseModel();
    } on DioException catch (e) {
      throw Exception(e.toString());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
