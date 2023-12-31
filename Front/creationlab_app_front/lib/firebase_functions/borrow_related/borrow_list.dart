import 'package:cloud_firestore/cloud_firestore.dart';

class Borrowlist {
  final String docId;
  final String username;
  final String toolname;
  final String date;

  Borrowlist({
    required this.docId,
    required this.username,
    required this.toolname,
    required this.date,
  });

  factory Borrowlist.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Borrowlist(
      docId: doc.id,
      username: data["username"],
      toolname: data["toolname"],
      date: data["date"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // "docId": docId,
      "username": username,
      "toolname": toolname,
      "date": date,
    };
  }
}
