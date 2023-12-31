import 'package:creationlab_app_front/pages/itemlist/sub_itemlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/functions/sep_kor_type_color.dart';

Widget carditem(String number, String name, String type, String specific,
    String resources) {
  int contextSpace = 1;
  int contextFont = 3;

  return InkWell(
    onTap: () {
      Get.to(subItemList(name, number, specific, resources, type));
    },
    child: Container(
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
    ),
    // const SizedBox(
    //   height: 10,
    // )
  );
}
