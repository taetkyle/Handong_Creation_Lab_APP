import 'package:creationlab_app_front/firebase_functions/admin_related/admin_id_pw_call.dart';
import 'package:creationlab_app_front/pages/tool_borrow/tool_borrow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'itemlist/itemlist.dart';
import 'package:get/get.dart';
import 'app_manage/administer_varify.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'dart:js' as js;

class Homepage extends StatelessWidget {
  // const Homepage({super.key});

  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);
  int lang = 0;

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.3,
              fit: BoxFit.fitWidth,
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
                      fontSize: 80,
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
                          child: Center(
                            child: Text(
                              ["물품 리스트", "Item List"][lang],
                              style: const TextStyle(
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
                          child: Center(
                            child: Text(
                              ["장비 대출", "Tool Borrow"][lang],
                              style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Get.to(() => const tool_borrow());
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
                              "HIS Connection",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onTap: () async {
                          Get.to(js.context.callMethod('open', [
                            "https://his.sc.kr/category/news-and-media/news/"
                          ]));
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
                          child: Center(
                            child: Text(
                              ["어플 관리", "App Management"][lang],
                              style: const TextStyle(
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
            const Spacer(),
            GestureDetector(
              child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  height: 56, // Adjust the height as needed
                  // Adjust the color as needed
                  child: const Center(
                      child: Text(
                    "Language",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "KoreanFont",
                      fontSize: 20,
                    ),
                  ))),
              onTap: () {
                showModalBottomSheet<void>(
                  // shape: RoundedRectangleBorder(
                  //     borderRadius:
                  //         BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 7,
                            child: Center(
                              child: Text(
                                [
                                  "Change to English version",
                                  "한국어로 바꾸겠습니까?"
                                ][lang],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: "KoreanFont",
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: GestureDetector(
                              onTap: () {
                                (lang == 0)
                                    ? Provider.of<LangProvider>(context,
                                            listen: false)
                                        .changeToEng()
                                    : Provider.of<LangProvider>(context,
                                            listen: false)
                                        .changeToKor();
                                Get.offAll(Homepage());
                              },
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.circular(5)),
                                height: 56, // Adjust the height as needed
                                // Adjust the color as needed
                                child: const Center(
                                  child: Text(
                                    "Change",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "KoreanFont",
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(Icons.close)),
                          )
                          // SizedBox(
                          //   height: 150,
                          // )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
