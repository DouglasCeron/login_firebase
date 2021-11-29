import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_firebase/core/domain/entities/user_login_entity.dart';

class AuthRemoteDatasource {
  Future<bool> loginUser(UserLoginEntity entity) async {
    if (entity.email == 'email' && entity.password == 'senha') {
      return true;
    } else {
      return false;
    }
  }
}
