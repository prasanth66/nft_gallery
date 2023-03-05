part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUserEvent extends LoginEvent {}

class CreateAccountEvent extends LoginEvent {
    final String email;
    final String name;
    final String password;
    const CreateAccountEvent({
      required this.name,
      required this.password,
      required this.email
    });
}

class ShowCreateAccountFormEvent extends LoginEvent{}
