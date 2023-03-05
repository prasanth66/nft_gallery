import 'package:final_template/features/login/data/datasources/create_user_data_source.dart';
import 'package:final_template/features/login/domain/usecases/create_user_usecse.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;

import 'core/apis/base/custom_http_client.dart';
import 'core/network/network_info.dart';
import 'features/login/data/repositories/login_repository_impl.dart';
import 'features/login/domain/repositories/login_repository.dart';
import 'features/login/presentation/bloc/login_bloc.dart';



final sl = GetIt.instance;

Future<void> init() async {
  general();
  injectLogin();
}

void general() {
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => CustomHttpClient());
  sl.registerLazySingleton(() => http.Client());
}


void injectLogin() {
  sl.registerFactory(() => LoginBloc(createUserUseCase: sl()));
  sl.registerLazySingleton(() => CreateUserUseCase( sl()));
  sl.registerLazySingleton<CreateUserRepository>(
          () => CreateUserRepositoryImpl(dataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<CreateUserDataSource>(
          () => CreateUserDataSourceImpl());
}