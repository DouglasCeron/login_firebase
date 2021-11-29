import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:login_firebase/shared/routes/app_strings/app_strings.dart';

import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textInputFiled(
                obscureText: false,
                controller: controller.emailController,
                labelText: controller.labelEmailText,
              ),
              const SizedBox(height: 20),
              textInputFiled(
                obscureText: true,
                controller: controller.passWordController,
                labelText: controller.labelPasswordText,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.userLogin,
                child: const Text(AppStrings.login),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textInputFiled({
    bool? obscureText,
    TextEditingController? controller,
    String? labelText,
  }) {
    return TextFormField(
      obscureText: obscureText!,
      obscuringCharacter: obscureText ? '#' : '.',
      controller: controller!,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(50),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
