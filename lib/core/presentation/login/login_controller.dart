import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_firebase/core/domain/entities/user_login_entity.dart';
import 'package:login_firebase/core/domain/usecase/user_login_usecase.dart';
import 'package:login_firebase/shared/routes/app_routes.dart';
import 'package:login_firebase/shared/routes/app_strings/app_strings.dart';

class LoginController extends GetxController {
  UserLoginUsecase loginUsecase;

  LoginController(
    this.loginUsecase,
  );

  final String labelEmailText = AppStrings.email;
  final String labelPasswordText = AppStrings.password;
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  userLogin() async {
    var result = await loginUsecase(
      UserLoginEntity(
        email: emailController.text,
        password: passWordController.text,
      ),
    );
    if (result) {
      Get.offAllNamed(AppRoutes.home);
    } else {
      print('falha');
    }
    return result;
  }
}
