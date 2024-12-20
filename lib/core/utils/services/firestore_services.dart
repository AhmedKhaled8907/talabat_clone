import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:talabat_clone/core/utils/services/database_services.dart';

class FirestoreService extends DatabaseService {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future getData({
    required String path,
    Map<String, dynamic>? query,
    String? documentId,
  }) async {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) {
    // TODO: implement checkIfDataExists
    throw UnimplementedError();
  }
}
