import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/create_user_entity.dart';

abstract class LoginRepository {}

abstract class CreateUserRepository{
  Future<Either<Failure, CreateUserEntity>> createUser(CreateUserEntity createUserEntity);
}
