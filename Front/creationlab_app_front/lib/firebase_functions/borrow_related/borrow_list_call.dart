import 'borrow_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Borrowlist>> borrowlistcallFireStore() async {
  List<Borrowlist> BorrowList = [];
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('borrowlist')
        .orderBy("date")
        .get();

    querySnapshot.docs.forEach((DocumentSnapshot doc) {
      Borrowlist item = Borrowlist.fromFirestore(doc);
      BorrowList.add(item);
    });
  } catch (e) {
    print("Error fetching data: $e");
  }
  for (Borrowlist a in BorrowList) {}
  return BorrowList;
}
