abstract class DatabaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });

  Future<dynamic> getData({
    required String path,
    Map<String, dynamic>? query,
    String? documentId,
  });

  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  });
}
