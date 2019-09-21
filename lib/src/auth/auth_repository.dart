import 'package:flut_test/src/auth/auth_model.dart';
import 'package:flut_test/src/auth/auth_api_provider.dart';

class UserRepository{
  AuthApiProvider _apiProvider = AuthApiProvider();

  Future<AuthModel> getUser(){
    return _apiProvider.getUser();
  }
}