import 'package:cloud_firestore/cloud_firestore.dart';

class Itemss {
  final String docId;
  final String engname;
  final String korname;
  final int number;
  final String detail_info;
  final String eng_detailed_info;
  final String resources;
  final String kortype;
  final String engtype;

  Itemss({
    required this.docId,
    required this.engname,
    required this.korname,
    required this.number,
    required this.detail_info,
    required this.eng_detailed_info,
    required this.resources,
    required this.kortype,
    required this.engtype,
  });

  factory Itemss.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Itemss(
      docId: doc.id,
      detail_info: data["detail_info"],
      eng_detailed_info: data["eng_detailed_info"],
      engname: data["engname"],
      engtype: data["engtype"],
      korname: data["korname"],
      kortype: data["kortype"],
      number: data["number"],
      resources: data["resources"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "detail_info": detail_info,
      "eng_detailed_info": eng_detailed_info,
      "engname": engname,
      "engtype": engtype,
      "korname": korname,
      "kortype": kortype,
      "number": number,
      "resources": resources,
    };
  }
}
