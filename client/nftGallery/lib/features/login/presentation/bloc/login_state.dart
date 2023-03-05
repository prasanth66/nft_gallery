part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoadingState extends LoginState {}

class LoadedState extends LoginState {}

class ErrorState extends LoginState {}

class CreateAccountState extends LoginState{

}

class CreateAccountErrorState extends LoginState{
  final String errorMessage;
  const CreateAccountErrorState({required this.errorMessage});
}

class ShowCreateAccountFormState extends LoginState{
  final bool createAccount ;
  const ShowCreateAccountFormState({required this.createAccount});
}
