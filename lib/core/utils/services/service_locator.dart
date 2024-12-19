import 'package:get_it/get_it.dart';
import 'package:talabat_clone/core/utils/services/database_services.dart';
import 'package:talabat_clone/core/utils/services/firebase_auth_services.dart';
import 'package:talabat_clone/core/utils/services/firestore_services.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_base_source.dart';
import 'package:talabat_clone/features/auth/data/data_source/auth_data_source.dart';
import 'package:talabat_clone/features/auth/data/repos/auth_repo_impl.dart';
import 'package:talabat_clone/features/auth/domain/repos/auth_repo.dart';
import 'package:talabat_clone/features/auth/domain/usecases/facebook_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/google_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:talabat_clone/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:talabat_clone/features/auth/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:talabat_clone/features/main/presentation/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';

final sl = GetIt.instance;

void serviceLocator() {
  sl
    // Firebase Services
    ..registerSingleton<FirebaseAuthService>(
      FirebaseAuthService(),
    )
    ..registerSingleton<DatabaseService>(
      FirestoreServices(),
    )
    // Data Sources
    ..registerFactory<AuthDataSource>(
      () => AuthDataSourceImpl(sl()),
    )
    ..registerFactory<AuthDataBaseSource>(
      () => AuthDataBaseSourceImpl(sl()),
    )
    // Repositories
    ..registerFactory<AuthRepo>(
      () => AuthRepoImpl(
        authDataSource: sl(),
        databaseService: sl(),
      ),
    )
    // Usecases
    ..registerFactory<SignUpUsecase>(
      () => SignUpUsecase(sl()),
    )
    ..registerFactory<SignInUsecase>(
      () => SignInUsecase(sl()),
    )
    ..registerFactory<GoogleUsecase>(
      () => GoogleUsecase(sl()),
    )
    ..registerFactory<FacebookUsecase>(
      () => FacebookUsecase(sl()),
    )
    ..registerFactory<ResetPasswordUsecase>(
      () => ResetPasswordUsecase(sl()),
    )
    ..registerFactory<SignOutUsecase>(
      () => SignOutUsecase(sl()),
    )
    // Blocs
    ..registerLazySingleton<BottomNavBarCubit>(
      () => BottomNavBarCubit(),
    )
    ..registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        signUpUsecase: sl(),
        signInUsecase: sl(),
        googleUsecase: sl(),
        facebookUsecase: sl(),
        resetPasswordUsecase: sl(),
        signOutUsecase: sl(),
      ),
    );
}
