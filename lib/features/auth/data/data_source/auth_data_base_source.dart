// import 'package:talabat_clone/core/utils/resources/app_end_points.dart';
// import 'package:talabat_clone/core/utils/services/database_services.dart';
// import 'package:talabat_clone/features/auth/data/models/user_model.dart';

// abstract class AuthDataBaseSource {
//   Future<void> addUserData({required UserModel user});
// }

// class AuthDataBaseSourceImpl implements AuthDataBaseSource {
//   final DatabaseService databaseService;

//   AuthDataBaseSourceImpl(this.databaseService);

//   @override
//   Future<void> addUserData({required UserModel user}) async {
//     await databaseService.addData(
//       path: AppEndPoints.addUserData,
//       data: user.toJson(),
//     );
//   }
// }
