import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/components/function/main_function.dart';
import 'package:todo_list/data/constant/config.dart';
import 'package:todo_list/presentation/view/login/login_page.dart';
import 'package:todo_list/presentation/view/register/register_page.dart';

class MainGetx extends GetxController {
  Widget? page;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  void onReady() {
    init();
    super.onReady();
  }

  init() {
    getCache();
  }

  getCache() {
    if (C.getBool(cKey: AppConfig.isRegister, lDefaultValue: false)) {
      page = LoginPage();
    } else {
      page = RegisterPage();
    }
  }
}
