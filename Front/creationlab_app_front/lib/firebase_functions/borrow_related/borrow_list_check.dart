import 'package:cloud_firestore/cloud_firestore.dart';

void deleteDoc(String docID) {
  FirebaseFirestore.instance.collection("borrowlist").doc(docID).delete();
}
