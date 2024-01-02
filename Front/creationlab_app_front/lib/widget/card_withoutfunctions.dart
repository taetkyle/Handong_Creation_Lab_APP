import 'package:flutter/cupertino.dart';
import 'package:creationlab_app_front/functions/sep_kor_type_color.dart';
import 'package:flutter/material.dart';

Widget cardWithoutFunctions(
  String number,
  String name,
  String type,
) {
  int contextSpace = 1;
  return Container(
    height: 70,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 229, 228, 228),
        border: Border.all(
          color: const Color.fromARGB(255, 229, 228, 228),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    child: Row(
      children: [
        Expanded(
          flex: contextSpace,
          child: SizedBox(),
        ),
        Expanded(
            flex: 3,
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "KoreanFont",
                fontSize: 40,
              ),
            )),
        Expanded(
          flex: contextSpace,
          child: const SizedBox(),
        ),
        Expanded(
            flex: 3,
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "KoreanFont",
                fontSize: 20,
              ),
            )),
        const Expanded(
          flex: 5,
          child: SizedBox(),
        ),
        Expanded(
          flex: 3,
          child: Text(
            type,
            style: TextStyle(
              color: sepKorTypeColor(type),
              fontFamily: "KoreanFont",
              fontSize: 20,
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    ),
  );
}
