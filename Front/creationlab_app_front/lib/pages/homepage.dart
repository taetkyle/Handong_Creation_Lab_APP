import 'package:creationlab_app_front/pages/tool_borrow/tool_borrow.dart';
import 'package:flutter/material.dart';
import 'itemlist/itemlist.dart';
import 'notification.dart';
import 'package:creationlab_app_front/firebase_functions/createdata.dart';
import 'app_manage/appManage.dart';
import 'package:get/get.dart';
import 'app_manage/administer_varify.dart';
import 'package:creationlab_app_front/firebase_functions/itemcall.dart';

class Homepage extends StatelessWidget {
  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);

  @override
  Widget build(BuildContext context) {
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
                              "물품 리스트",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(() => const itemList());
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
                              "유의 사항",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () async {
                          await itemcallFireStore();
                          // createData();
                          // Get.to(() => const notification());
                        },
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                  ],
                )),

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
                              "장비 대출",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(() => tool_borrow());
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
                              "어플 관리",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(() => administer_varify());
                        },
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                  ],
                )),
            const Expanded(
              flex: 3,
              child: SizedBox(),
            ),

            //추가로 영어버전 생기게 되면 activate
            // Expanded(
            //     flex: 1,
            //     child: Row(
            //       children: [
            //         const Expanded(
            //           flex: 1,
            //           child: SizedBox(),
            //         ),
            //         const Expanded(
            //           flex: 6,
            //           child: Text(
            //             "Please Select Language",
            //             style: TextStyle(
            //               fontFamily: "BoarderFont",
            //             ),
            //           ),
            //         ),
            //         Expanded(flex: 1, child: Container(color: Colors.amber)),
            //       ],
            //     )),
          ],
        ),
      ),
    );
  }
}
