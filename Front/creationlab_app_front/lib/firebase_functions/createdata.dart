import 'package:cloud_firestore/cloud_firestore.dart';

void createData() {
  final usercol = FirebaseFirestore.instance.collection("items").doc("item4");
  usercol.set(
    {
      "engname": "abc",
      "korname": 5,
    },
  );
}
