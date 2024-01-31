import 'package:cloud_firestore/cloud_firestore.dart';

void deleteItemDoc(String docID) {
  FirebaseFirestore.instance.collection("tools").doc(docID).delete();
}
