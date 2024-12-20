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
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future getData({
    required String path,
    Map<String, dynamic>? query,
    String? documentId,
  }) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.data();
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}
