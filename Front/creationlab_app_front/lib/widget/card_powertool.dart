import 'package:creationlab_app_front/pages/itemlist/sub_powertoollist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/functions/sep_kor_type_color.dart';
import 'package:creationlab_app_front/functions/image_select.dart';

Widget carditem(String tooltype, String modelname, String warning, String usage,
    String related, String resources, String risk) {
  int contextSpace = 1;
  int contextFont = 3;

  return Container(
    margin: const EdgeInsets.all(5),
    width: 300,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 229, 228, 228),
        border: Border.all(
          color: Color.fromARGB(255, 229, 228, 228),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    child: InkWell(
        onTap: () {
          Get.to(subPowerToolList(
              tooltype, modelname, warning, usage, related, risk, resources));
        },
        child: Column(
          children: [
            const SizedBox(height: 10),
            Image.asset(cacheHeight: 150, imageSelect(tooltype)),
            const Spacer(),
            Expanded(
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  const Expanded(
                      flex: 4,
                      child: Text(
                        "Type:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "KoreanFont",
                          fontSize: 20,
                        ),
                      )),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  Expanded(
                      flex: 12,
                      child: Text(
                        tooltype,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "KoreanFont",
                          fontSize: 20,
                        ),
                      )),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                ],
                // mainAxisAlignment:
                //     MainAxisAlignment.start,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )
        // const SizedBox(
        //   height: 10,
        // )
        ),
  );
}
