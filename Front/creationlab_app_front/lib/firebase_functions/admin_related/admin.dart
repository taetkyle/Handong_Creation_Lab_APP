import 'package:cloud_firestore/cloud_firestore.dart';

class Admin {
  final String id;
  final String pw;

  Admin({
    required this.id,
    required this.pw,
  });

  factory Admin.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Admin(
      id: data["id"],
      pw: data["pw"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "pw": pw,
    };
  }
}
