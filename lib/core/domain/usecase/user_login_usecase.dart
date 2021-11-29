import 'package:login_firebase/core/domain/entities/user_login_entity.dart';
import 'package:login_firebase/core/domain/repository/auth_repository.dart';

class UserLoginUsecase {
  AuthRepository? authRepository;

  UserLoginUsecase(this.authRepository);

  Future<bool> call(UserLoginEntity entity) async {
    return await authRepository!.loginUser(entity);
  }
}
