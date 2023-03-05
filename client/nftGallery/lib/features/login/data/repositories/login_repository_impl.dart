import 'package:dartz/dartz.dart';
import 'package:final_template/core/error/failures.dart';
import 'package:final_template/features/login/data/datasources/create_user_data_source.dart';
import 'package:final_template/features/login/data/models/create_user_model.dart';
import 'package:final_template/features/login/domain/entities/create_user_entity.dart';
import 'package:final_template/features/login/domain/repositories/login_repository.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';

class LoginRepositoryImpl implements LoginRepository {}

class CreateUserRepositoryImpl implements CreateUserRepository{

  final CreateUserDataSource dataSource;
  final NetworkInfo networkInfo;
  CreateUserRepositoryImpl({required this.dataSource,required this.networkInfo});


  @override
  Future<Either<Failure, CreateUserEntity>> createUser(CreateUserEntity createUserEntity) async{
    if(await networkInfo.isConnected){
      try {
        final CreateUserModel createUserModel = await dataSource.createUser(createUserEntity);
        return Right(createUserModel);
      } on ServerException {
        return Left(ServerFailure());
      } on ApiException catch (e) {
        return Left(ApiFailure(message: e.message));
      }on ValidationException catch (e) {
        return Left(ValidationFailure(message: e.message));
      }
    }else{
      return Left(InternetFailure());
    }
  }

}
