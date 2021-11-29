import 'package:login_firebase/core/domain/entities/user_login_entity.dart';

abstract class AuthRepository {
  Future<bool> loginUser(UserLoginEntity entity);
}
