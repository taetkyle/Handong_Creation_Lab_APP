import 'admin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<Admin?> AdmincallFireStore() async {
  Admin? admin;

  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('admin').get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot doc = querySnapshot.docs.first;
      admin = Admin.fromFirestore(doc);
    }
  } catch (e) {
    print("Error fetching data: $e");
  }

  return admin;
}
