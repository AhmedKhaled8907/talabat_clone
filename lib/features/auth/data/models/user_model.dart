import 'package:firebase_auth/firebase_auth.dart';
import 'package:talabat_clone/core/utils/resources/app_json.dart';
import 'package:talabat_clone/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.uid,
    required super.fullName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json[AppJson.email] as String,
      uid: json[AppJson.uid] as String,
      fullName: json[AppJson.fullName] as String,
    );
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      email: entity.email,
      uid: entity.uid,
      fullName: entity.fullName,
    );
  }

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      email: user.email ?? '',
      uid: user.uid,
      fullName: user.displayName ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      AppJson.email: email,
      AppJson.uid: uid,
      AppJson.fullName: fullName,
    };
  }

  
}
