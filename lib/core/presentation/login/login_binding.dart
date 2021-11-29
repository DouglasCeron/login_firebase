import 'package:get/get.dart';
import 'package:login_firebase/core/data/datasource/auth_remote_datasource.dart';
import 'package:login_firebase/core/data/repositoryImpl/auth_repository_impl.dart';
import 'package:login_firebase/core/domain/usecase/user_login_usecase.dart';
import 'package:login_firebase/core/presentation/login/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    registerController();
    registerUsecase();
    registerRepositories();
    registerDatasources();
  }

  registerController() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        Get.find<UserLoginUsecase>(),
      ),
    );
  }

  registerUsecase() {
    Get.lazyPut<UserLoginUsecase>(
      () => UserLoginUsecase(
        Get.find<AuthRepositoryImpl>(),
      ),
    );
  }

  registerRepositories() {
    Get.lazyPut<AuthRepositoryImpl>(
      () => AuthRepositoryImpl(
        Get.find<AuthRemoteDatasource>(),
      ),
    );
  }

  registerDatasources() {
    Get.lazyPut<AuthRemoteDatasource>(
      () => AuthRemoteDatasource(),
    );
  }
}
