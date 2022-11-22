import 'package:vexana/vexana.dart';

import '../../models/auth_response_model.dart';

abstract class IAuthService {
  final INetworkManager networkManager;
  IAuthService(this.networkManager);

  /// [login] and [register] here are written as an example.
  /// Please update here according to your project's requirements.

  Future<AuthResponseModel> login(String email, String password);
  Future<AuthResponseModel> register({
    required String name,
    required String surname,
    required String email,
    required String password,
  });
}

class AuthService extends IAuthService {
  AuthService(super.networkManager);

  @override
  Future<AuthResponseModel> login(String email, String password) {
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseModel> register(
      {required String name,
      required String surname,
      required String email,
      required String password}) {
    throw UnimplementedError();
  }
}
