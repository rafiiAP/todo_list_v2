import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/components/widgets/main_widget.dart';
import 'package:todo_list/data/constant/color.dart';
import 'package:todo_list/presentation/controller/register/register_gex.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final c = Get.put(RegisterGex());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            W.input(
              controller: c.emailController,
              hintText: "Email",
            ),
            W.paddingheight16(),
            W.input(
              controller: c.usernameController,
              hintText: "Username",
            ),
            W.paddingheight16(),
            W.inputPassword(
              controller: c.passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            W.paddingheight16(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: W.button(
                onPressed: () {
                  c.tapRegister();
                },
                child: W.textBody(
                  text: 'Register',
                  fontWeight: FontWeight.bold,
                  color: AppColorConfig.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
