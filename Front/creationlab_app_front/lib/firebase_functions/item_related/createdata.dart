import 'package:cloud_firestore/cloud_firestore.dart';

void createData(int number, String engname, String korname, String detail_info,
    String eng_detail_info, String kortype, String engtype, String resoures) {
  final usercol = FirebaseFirestore.instance.collection("items").doc();
  usercol.set(
    {
      "number": number,
      "engname": engname,
      "korname": korname,
      "detail_info": detail_info,
      "eng_detail_info": eng_detail_info,
      "kortype": kortype,
      "engtype": engtype,
      "resources": resoures
    },
  );
}
