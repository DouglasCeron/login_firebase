import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:login_firebase/shared/routes/app_routes.dart';
import 'home_controller.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('HomePage'),
            ),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(AppRoutes.login),
              child: const Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
