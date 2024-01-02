import 'package:flutter/cupertino.dart';
import 'package:creationlab_app_front/functions/sep_kor_type_color.dart';

Widget typeSepEachLine(String type) {
  return Row(
    children: [
      const Expanded(flex: 2, child: SizedBox()),
      Expanded(
          flex: 5,
          child: Container(
            color: sepKorTypeColor(type),
            height: 30,
          )),
      const Expanded(flex: 1, child: SizedBox()),
      Expanded(
          flex: 3,
          child: Text(
            type,
            style: const TextStyle(
              // color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 25,
            ),
          )),
      const Expanded(flex: 2, child: SizedBox()),
    ],
  );
}
