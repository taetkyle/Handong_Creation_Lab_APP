import 'package:cloud_firestore/cloud_firestore.dart';

void createData(
    String kor_tool_type,
    String eng_tool_type,
    String model_name,
    String kor_usage,
    String eng_usage,
    String kor_warning,
    String eng_warning,
    String kor_related_tool,
    String eng_related_tool,
    String resources) {
  final usercol = FirebaseFirestore.instance.collection("tools").doc();
  usercol.set(
    {
      "kor_tool_type": kor_tool_type,
      "eng_tool_type": eng_tool_type,
      "model_name": model_name,
      "kor_usage": kor_usage,
      "eng_usage": eng_usage,
      "kor_warning": kor_warning,
      "eng_warning": eng_warning,
      "kor_related_tool": kor_related_tool,
      "eng_related_tool": eng_related_tool,
      "resources": resources,
    },
  );
}
