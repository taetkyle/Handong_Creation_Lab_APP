import 'package:cloud_firestore/cloud_firestore.dart';

class Tools {
  final String docId;
  final String kor_tool_type;
  final String eng_tool_type;
  final String model_name;
  final String kor_usage;
  final String eng_usage;
  final String kor_warning;
  final String eng_warning;
  final String kor_related_tool;
  final String eng_related_tool;
  final String kor_risk;
  final String eng_risk;
  final String resources;

  Tools(
      {required this.docId,
      required this.kor_tool_type,
      required this.eng_tool_type,
      required this.model_name,
      required this.kor_usage,
      required this.eng_usage,
      required this.kor_warning,
      required this.eng_warning,
      required this.kor_related_tool,
      required this.eng_related_tool,
      required this.kor_risk,
      required this.eng_risk,
      required this.resources});

  factory Tools.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Tools(
      docId: doc.id,
      kor_tool_type: data["kor_tool_type"],
      eng_tool_type: data["eng_tool_type"],
      model_name: data["model_name"],
      kor_usage: data["kor_usage"],
      eng_usage: data["eng_usage"],
      kor_warning: data["kor_warning"],
      eng_warning: data["eng_warning"],
      kor_related_tool: data["kor_related_tool"],
      eng_related_tool: data["eng_related_tool"],
      kor_risk: data["kor_risk"],
      eng_risk: data["eng_risk"],
      resources: data["resources"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "kor_tool_type": kor_tool_type,
      "eng_tool_type": eng_tool_type,
      "model_name": model_name,
      "kor_usage": kor_usage,
      "eng_usage": eng_usage,
      "kor_warning": kor_warning,
      "eng_warning": eng_warning,
      "kor_related_tool": kor_related_tool,
      "eng_related_tool": eng_related_tool,
      "kor_risk": kor_risk,
      "eng_risk": eng_risk,
      "resources": resources,
    };
  }
}
