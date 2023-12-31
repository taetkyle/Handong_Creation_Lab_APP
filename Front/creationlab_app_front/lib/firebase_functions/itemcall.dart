import 'dart:convert';

import 'items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<Itemss>> itemcallFireStore() async {
  List<Itemss> itemsList = [];
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('items')
        .orderBy("number")
        .get();

    querySnapshot.docs.forEach((DocumentSnapshot doc) {
      Itemss item = Itemss.fromFirestore(doc);
      itemsList.add(item);
    });
  } catch (e) {
    print("Error fetching data: $e");
  }
  for (Itemss a in itemsList) {}
  return itemsList;
}
