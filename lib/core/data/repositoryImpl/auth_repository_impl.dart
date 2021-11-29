import 'package:login_firebase/core/data/datasource/auth_remote_datasource.dart';
import 'package:login_firebase/core/domain/entities/user_login_entity.dart';
import 'package:login_firebase/core/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDatasource? authRemoteDatasource;

  AuthRepositoryImpl(this.authRemoteDatasource);

  @override
  Future<bool> loginUser(UserLoginEntity entity) async {
    return await authRemoteDatasource!.loginUser(entity);
  }
}
