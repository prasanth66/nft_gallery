import 'package:equatable/equatable.dart';

class CreateUserEntity extends Equatable{
  final String name;
  final String email;
  final String password;
  final String? profilePic;

  const CreateUserEntity({
    required this.password,
    required this.email,
    required this.name,
    this.profilePic
  });


  @override
  List<Object?> get props => [];

}