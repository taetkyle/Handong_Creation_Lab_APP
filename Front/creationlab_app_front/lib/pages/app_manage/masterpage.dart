import 'package:creationlab_app_front/pages/app_manage/deep_location/tool_related/tool_adding.dart';
import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'deep_location/borrow_related/borrow_manage.dart';
import 'deep_location/item_related/item_manage.dart';
import 'dart:js' as js;
import 'package:provider/provider.dart';
// LangProvider

class masterpage extends StatefulWidget {
  const masterpage({super.key});

  @override
  State<masterpage> createState() => _masterpageState();
}

class _masterpageState extends State<masterpage> {
  @override
  Widget build(BuildContext context) {
    Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
    Color textColor = const Color.fromARGB(255, 2, 21, 104);
    int lang = Provider.of<LangProvider>(context, listen: false).language;

    return (MediaQuery.of(context).size.width > 530)
        ? Container(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["물품 관리", "Item Manage"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["대출 관리", "Borrow Manage"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["장비 추가", "Add Tools"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["장비 구매\n링크들", "Tool's Sites"][lang],
                                  style: const TextStyle(
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
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Get.offAll(Homepage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Icons.cancel,
                                ),
                                Text(
                                  ['나가기', 'Exit'][lang],
                                  style: const TextStyle(
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
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false, // 바깥 영역 터치시 닫을지 여부
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text(
                                      [
                                        "물품 추가 페이지안에있는 물품 추가 페이지와 장비 추가 버튼으로 이어지는 장비 추가 버튼은 다릅니다.\n 물품 추가는 번호가 매겨진 다소 작은 장비들이고, 장비 추가는 비교적 큰 드릴같은 장비들입니다.\n화이팅!!",
                                        "\"Add Tool\" function in the \"Add Tool\" page and \"Add Items\" in the \"Item Manage\" page is not same.\n\"Add Item\" is comparatively small item with numbers; \"Add Tool\" refers to relatively large equipment such as drills."
                                      ][lang],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: "KoreanFont",
                                        fontSize: 20,
                                      ),
                                    ),
                                    insetPadding:
                                        const EdgeInsets.fromLTRB(0, 80, 0, 80),
                                    actions: [
                                      TextButton(
                                        child: Text(
                                          ['확인', 'OK'][lang],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: "KoreanFont",
                                            fontSize: 20,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Icons.help,
                                ),
                                Text(
                                  ['도움말', 'Help'][lang],
                                  style: const TextStyle(
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
                    ],
                  )),
            ),
          )
        : Container(
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
                          "CreationLab\nApp",
                          style: TextStyle(
                            color: Color.fromARGB(255, 90, 90, 90),
                            fontFamily: "KoreanFont",
                            fontSize: 60,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["물품 관리", "Item Manage"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["대출 관리", "Borrow Manage"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["장비 추가", "Add Tools"][lang],
                                  style: const TextStyle(
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  color: buttonColor),
                              child: Center(
                                child: Text(
                                  ["장비 구매\n링크들", "Tool's\nSite"][lang],
                                  style: const TextStyle(
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
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),
              bottomNavigationBar: Container(
                  height: 60,
                  color: Colors.black12,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Get.offAll(Homepage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Icons.cancel,
                                ),
                                Text(
                                  ['나가기', 'Exit'][lang],
                                  style: const TextStyle(
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
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false, // 바깥 영역 터치시 닫을지 여부
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Text(
                                      [
                                        "물품 추가 페이지안에있는 물품 추가 페이지와 장비 추가 버튼으로 이어지는 장비 추가 버튼은 다릅니다.\n 물품 추가는 번호가 매겨진 다소 작은 장비들이고, 장비 추가는 비교적 큰 드릴같은 장비들입니다.\n화이팅!!",
                                        "\"Add Tool\" function in the \"Add Tool\" page and \"Add Items\" in the \"Item Manage\" page is not same.\n\"Add Item\" is comparatively small item with numbers; \"Add Tool\" refers to relatively large equipment such as drills."
                                      ][lang],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "KoreanFont",
                                        fontSize: 20,
                                      ),
                                    ),
                                    insetPadding:
                                        const EdgeInsets.fromLTRB(0, 80, 0, 80),
                                    actions: [
                                      TextButton(
                                        child: Text(
                                          ['확인', 'OK'][lang],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontFamily: "KoreanFont",
                                            fontSize: 20,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: <Widget>[
                                const Icon(
                                  Icons.help,
                                ),
                                Text(
                                  ['도움말', 'help'][lang],
                                  style: const TextStyle(
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
                    ],
                  )),
            ),
          );
  }
}
