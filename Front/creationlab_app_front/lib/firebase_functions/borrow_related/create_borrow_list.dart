import 'package:cloud_firestore/cloud_firestore.dart';

void createBorrowList(String username, String toolname, String date) {
  final usercol = FirebaseFirestore.instance.collection("borrowlist").doc();
  usercol.set(
    {
      "username": username,
      "toolname": toolname,
      "date": date,
    },
  );
}
