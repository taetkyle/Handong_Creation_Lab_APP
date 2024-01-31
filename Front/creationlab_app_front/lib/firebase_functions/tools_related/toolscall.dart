import 'tools.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Tools>> itemcallFireStore() async {
  List<Tools> toolList = [];
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('tools').get();

    querySnapshot.docs.forEach((DocumentSnapshot doc) {
      Tools item = Tools.fromFirestore(doc);

      toolList.add(item);
    });
  } catch (e) {
    print("Error fetching data: $e");
  }
  for (Tools a in toolList) {}
  return toolList;
}
