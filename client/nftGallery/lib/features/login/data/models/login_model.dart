import 'package:final_template/features/login/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    required String email,
    required String password
  }) : super(email: email, password: password);
}
