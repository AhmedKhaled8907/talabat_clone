import 'package:get_it/get_it.dart';
import 'package:talabat_clone/core/utils/services/firebase_auth_services.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_source.dart';
import 'package:talabat_clone/features/auth/data/repos/auth_repo_impl.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';

final sl = GetIt.instance;

void serviceLocator() {
  sl
    // Firebase Services
    ..registerSingleton<FirebaseAuthService>(
      FirebaseAuthService(),
    )
    // Data Sources
    ..registerFactory<AuthDataSource>(
      () => AuthDataSourceImpl(sl()),
    )
    // Repositories
    ..registerFactory<AuthRepo>(
      () => AuthRepoImpl(sl()),
    )
    // Usecases
    ..registerFactory<SignUpUsecase>(
      () => SignUpUsecase(sl()),
    )
    // Blocs
    ..registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        signUpUsecase: sl(),
      ),
    );
}
