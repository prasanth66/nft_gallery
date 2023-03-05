import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:final_template/core/error/failures.dart';
import 'package:final_template/core/usecases/usecase.dart';
import 'package:final_template/features/login/domain/entities/login_entity.dart';

class LoginpUserUsecase implements UseCase<LoginEntity, Params> {
  @override
  Future<Either<Failure, LoginEntity>> call(Params params) {
    throw UnimplementedError();
  }
}

class Params extends Equatable {
  @override
  List<Object> get props => [];
}
