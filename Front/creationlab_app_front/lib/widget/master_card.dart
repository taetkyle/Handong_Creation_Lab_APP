import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/pages/app_manage/deep_location/item_related/sub_item_manage.dart';

Widget masterCarditem(String docId, String name, String number,
    String detail_info, String resources, String type) {
  int contextSpace = 1;
  int contextFont = 3;

  return InkWell(
    onTap: () {
      Get.to(subItemManage(docId, name, number, detail_info, resources, type));
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
              style: const TextStyle(
                color: Colors.black,
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
