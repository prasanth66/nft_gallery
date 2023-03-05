import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:final_template/core/error/failures.dart';
import 'package:final_template/features/login/domain/entities/create_user_entity.dart';

import '../../../../core/usecases/usecase.dart';
import '../repositories/login_repository.dart';

class CreateUserUseCase extends UseCase<CreateUserEntity, Params>{

  final CreateUserRepository createUserRepository;

  CreateUserUseCase( this.createUserRepository);
  @override
  Future<Either<Failure, CreateUserEntity>> call(Params params) async{
    return await createUserRepository.createUser(params.createUserEntity);
  }

}

class Params extends Equatable{

  final CreateUserEntity createUserEntity;
  const Params({required this.createUserEntity});
  @override
  List<Object> get props => [];
  
}