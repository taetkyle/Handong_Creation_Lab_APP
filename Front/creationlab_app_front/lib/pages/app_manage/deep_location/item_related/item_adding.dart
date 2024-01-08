import 'package:creationlab_app_front/firebase_functions/item_related/createdata.dart';
import 'package:creationlab_app_front/pages/app_manage/masterpage.dart';
import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class itemAdding extends StatefulWidget {
  const itemAdding({super.key});

  @override
  State<itemAdding> createState() => _itemAddingState();
}

class _itemAddingState extends State<itemAdding> {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController toolnameEditingController = TextEditingController();
  TextEditingController engnameEditingController = TextEditingController();
  TextEditingController kornameEditingController = TextEditingController();
  TextEditingController numberEditingController = TextEditingController();
  TextEditingController detail_infoEditingController = TextEditingController();
  TextEditingController resourcesEditingController = TextEditingController();
  TextEditingController kortypeEditingController = TextEditingController();
  TextEditingController engtypeEditingController = TextEditingController();
  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.3,
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                        'assets/image/handong_logo_small.png',
                      ))),
              height: 200,
              child: const Center(
                child: Text(
                  "CreationLab App",
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 90, 90),
                    fontFamily: "KoreanFont",
                    fontSize: 70,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: engnameEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '장비 영어 이름',
                    hintText: '장비 영어 이름을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: kornameEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '장비 한국 이름',
                    hintText: '장비 한국 이름을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: numberEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '분류 번호',
                    hintText: '분류 번호을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: detail_infoEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '세부정보',
                    hintText: '세부정보을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: resourcesEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '리소스',
                    hintText: '리소스을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: kortypeEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '한국어 분류 종류',
                    hintText: '한국어 분류 종류을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: engtypeEditingController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영어 분류 종류',
                    hintText: '영어 분류 종류을 작성해주세요'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: buttonColor),
                      child: const Center(
                        child: Text(
                          "취소",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "KoreanFont",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                const Expanded(flex: 4, child: SizedBox()),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: buttonColor),
                      child: const Center(
                        child: Text(
                          "만들기",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "KoreanFont",
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (numberEditingController.text.isEmpty ||
                          engnameEditingController.text.isEmpty ||
                          kornameEditingController.text.isEmpty ||
                          detail_infoEditingController.text.isEmpty ||
                          kortypeEditingController.text.isEmpty ||
                          engtypeEditingController.text.isEmpty ||
                          int.parse(numberEditingController.text) % 1 != 0) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('오류'),
                            content: const Text('입력한 값들을 확인 해주세요'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('확인'),
                              ),
                            ],
                          ),
                        );
                      }
                      createData(
                          int.parse(numberEditingController.text),
                          engnameEditingController.text,
                          kornameEditingController.text,
                          detail_infoEditingController.text,
                          kortypeEditingController.text,
                          engtypeEditingController.text,
                          resourcesEditingController.text);
                      Get.offAll(() => masterpage());
                    },
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
