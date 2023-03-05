import 'package:final_template/features/login/domain/entities/create_user_entity.dart';

class CreateUserModel extends CreateUserEntity{
  const CreateUserModel({
    required String password,
    required String email,
    required String name
  }) : super(password: password, email: email, name: name);

  factory CreateUserModel.fromJson(Map<String, dynamic> json){
    return CreateUserModel(
      email: json["email"]??"",
      password: json["password"]??"",
      name: json["name"]??"",
    );
  }

}