import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:final_template/features/login/domain/entities/create_user_entity.dart';

import '../../../../core/helpers/helper_ui.dart';
import '../../domain/usecases/create_user_usecse.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final CreateUserUseCase createUserUseCase;
  LoginBloc({required this.createUserUseCase}) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginUserEvent) {}
    else if(event is CreateAccountEvent) {
      print("in createaccount event");
      final result = await createUserUseCase(
           Params(createUserEntity: CreateUserEntity(
              password: event.password,
              email: event.email,
              name: event.name
          ))
      ) ;
      result.fold((failure) {
        emit(const CreateAccountErrorState(errorMessage: "unable to create user"));
      }, (loaded) {
        emit(CreateAccountState());
      });

    }else if(event is ShowCreateAccountFormEvent){
       emit(const ShowCreateAccountFormState(createAccount: true));
    }


  }
}
