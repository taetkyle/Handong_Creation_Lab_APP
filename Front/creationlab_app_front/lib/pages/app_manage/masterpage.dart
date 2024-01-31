import 'package:creationlab_app_front/pages/app_manage/deep_location/tool_related/tool_adding.dart';
import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'deep_location/borrow_related/borrow_manage.dart';
import 'deep_location/item_related/item_manage.dart';
import 'dart:js' as js;

class masterpage extends StatelessWidget {
  const masterpage({super.key});

  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
    Color textColor = const Color.fromARGB(255, 2, 21, 104);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.3,
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/image/handong_logo.png',
              ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    "CreationLab   App",
                    style: TextStyle(
                      color: Color.fromARGB(255, 90, 90, 90),
                      fontFamily: "KoreanFont",
                      fontSize: 70,
                    ),
                  ),
                )),
            const Expanded(flex: 3, child: SizedBox()),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: buttonColor),
                        child: const Center(
                          child: Text(
                            "물품 관리",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "KoreanFont",
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(itemManage());
                      },
                    ),
                  ),
                  const Expanded(flex: 8, child: SizedBox()),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: buttonColor),
                        child: const Center(
                          child: Text(
                            "대출 관리",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "KoreanFont",
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      onTap: () async {
                        Get.to(borrowManage());
                      },
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: buttonColor),
                        child: const Center(
                          child: Text(
                            "장비 추가",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "KoreanFont",
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(toolAdding());
                      },
                    ),
                  ),
                  const Expanded(flex: 8, child: SizedBox()),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: buttonColor),
                        child: const Center(
                          child: Text(
                            "장비 구매\n링크들",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "KoreanFont",
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(js.context.callMethod('open', [
                          "https://docs.google.com/spreadsheets/d/1dZhpIN8vM9UbUOdhyY1hh5H3sSS_-44pRsHV_0e_-gQ/edit?usp=sharing"
                        ]));
                      },
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: InkWell(
            onTap: () {
              Get.offAll(Homepage());
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.cancel,
                  ),
                  Text(
                    '나가기',
                    style: TextStyle(
                      // color: Color.fromARGB(255, 90, 90, 90),
                      fontFamily: "KoreanFont",
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
