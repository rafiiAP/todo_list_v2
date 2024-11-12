import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/data/datasources/auth/auth_datasource.dart';
import 'package:todo_list/injection.dart';

class RegisterGex extends GetxController {
  final AuthDatasource authDatasource = locator<AuthDatasource>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  tapRegister() {
    authDatasource.register(
        email: emailController.text, password: passwordController.text, username: usernameController.text);
  }
}
