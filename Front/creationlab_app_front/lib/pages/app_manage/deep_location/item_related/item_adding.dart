import 'package:creationlab_app_front/firebase_functions/item_related/createdata.dart';
import 'package:creationlab_app_front/pages/app_manage/masterpage.dart';
import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// LangProvider

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
  TextEditingController eng_detail_infoEditingController =
      TextEditingController();
  TextEditingController resourcesEditingController = TextEditingController();
  TextEditingController kortypeEditingController = TextEditingController();
  TextEditingController engtypeEditingController = TextEditingController();
  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);

  @override
  Widget build(BuildContext context) {
    int lang = Provider.of<LangProvider>(context, listen: false).language;

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
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: ['장비 영어 이름', "Item English Name"][lang],
                    hintText: [
                      '장비 영어 이름을 작성해주세요',
                      'Please write Item\'s English Name'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: kornameEditingController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: ['장비 한국 이름', 'Item Korean Name'][lang],
                    hintText: [
                      '장비 한국 이름을 작성해주세요',
                      'Please write Item\'s Korean Name'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: numberEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ['분류 번호', 'Order Number'][lang],
                    hintText: [
                      '분류 번호을 작성해주세요',
                      'Please write Item\'s Order Number'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: detail_infoEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ['세부정보', 'Korean Specific Info'][lang],
                    hintText: [
                      '세부정보를 작성해주세요',
                      'Please write down Korean Specific Info'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: eng_detail_infoEditingController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: ['영문세부정보', 'English Specific Info'][lang],
                    hintText: [
                      '영문 세부정보을 작성해주세요',
                      'Please write down English Specific Info'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: resourcesEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ['리소스', 'Resources'][lang],
                    hintText: ['리소스을 작성해주세요', 'Please write resources'][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: kortypeEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ['한국어 분류 종류', 'Korean Seperation Type'][lang],
                    hintText: [
                      '한국어 분류 종류를 작성해주세요',
                      'Please write Korean Seperation Type'
                    ][lang]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: engtypeEditingController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ['영어 분류 종류', 'English Seperation Type'][lang],
                    hintText: [
                      '영어 분류 종류을 작성해주세요',
                      'Please write English Seperation Type'
                    ][lang]),
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
                      child: Center(
                        child: Text(
                          ["취소", "Cancel"][lang],
                          style: const TextStyle(
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
                      child: Center(
                        child: Text(
                          ["만들기", "Enter"][lang],
                          style: const TextStyle(
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
                            title: Text(['오류', "Error"][lang]),
                            content: Text([
                              '입력한 값들을 확인 해주세요',
                              'Please Check the Values'
                            ][lang]),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text(['확인', "OK"][lang]),
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
                          eng_detail_infoEditingController.text,
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
