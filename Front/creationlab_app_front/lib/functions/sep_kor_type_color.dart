import 'package:flutter/material.dart';

Color sepKorTypeColor(String type) {
  if (type == "3d 프린터 관련") {
    return Colors.green;
  } else if (type == "전기&전자") {
    return const Color.fromARGB(255, 216, 194, 0);
  } else if (type == "컴퓨터 관련") {
    return Colors.purple;
  } else if (type == "아두이노 관련") {
    return Colors.blue;
  } else if (type == "DC 모터관련") {
    return Colors.orange;
  } else if (type == "스텝 모터 관련") {
    return Colors.red;
  } else if (type == "모터 관련") {
    return Colors.brown;
  } else {
    return Colors.black;
  }
}
