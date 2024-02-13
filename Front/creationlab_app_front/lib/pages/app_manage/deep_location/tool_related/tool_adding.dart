import 'package:creationlab_app_front/firebase_functions/tools_related/createtool.dart';
import 'package:creationlab_app_front/pages/app_manage/masterpage.dart';
import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class toolAdding extends StatefulWidget {
  const toolAdding({super.key});

  @override
  State<toolAdding> createState() => _toolAddingState();
}

class _toolAddingState extends State<toolAdding> {
  TextEditingController kor_tool_type_controller = TextEditingController();
  TextEditingController eng_tool_type_controller = TextEditingController();
  TextEditingController model_name_controller = TextEditingController();
  TextEditingController kor_usage_controller = TextEditingController();
  TextEditingController eng_usage_controller = TextEditingController();
  TextEditingController kor_warning_controller = TextEditingController();
  TextEditingController eng_warning_controller = TextEditingController();
  TextEditingController kor_related_tool_controller = TextEditingController();
  TextEditingController eng_related_tool_controller = TextEditingController();
  TextEditingController kor_risk_controller = TextEditingController();
  TextEditingController eng_risk_controller = TextEditingController();
  TextEditingController resources_controller = TextEditingController();
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
                controller: kor_tool_type_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '한국어 장비 타입',
                    hintText: '장비 타입을 한국어로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: eng_tool_type_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영문 장비 타입',
                    hintText: '장비 타입을 영문으로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: model_name_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '모델 이름',
                    hintText: '모델 이름을 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: kor_usage_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '한국어 사용도',
                    hintText: '사용도를 한국어로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: eng_usage_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영문 사용도',
                    hintText: '사용도를 영문으로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: kor_warning_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '한국어 주의 사항',
                    hintText: '주의 사항을 한국어로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: eng_warning_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영문 주의 사항',
                    hintText: '주의 사항을 영문으로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: kor_related_tool_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '한국어 관련 도구',
                    hintText: '관련도구를 한국어로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                controller: eng_related_tool_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영문 관련 도구',
                    hintText: '관련 도구를 영문으로 작성해주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                // keyboardType: TextInputType.multiline,
                // maxLines: null,
                controller: kor_risk_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '장비 위험도',
                    hintText: '장비의 위험도를 상 중 하 중에 정해 적어주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                // keyboardType: TextInputType.multiline,
                // maxLines: null,
                controller: eng_risk_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '영문 장비 위험도',
                    hintText: '장비의 위험도를 High Middle Low 중에 정해 적어주세요'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: resources_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '리소스',
                    hintText: '리소스를 작성해주세요'),
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
                      if (kor_tool_type_controller.text.isEmpty ||
                          eng_tool_type_controller.text.isEmpty ||
                          kor_usage_controller.text.isEmpty ||
                          eng_usage_controller.text.isEmpty ||
                          kor_risk_controller.text.isEmpty ||
                          eng_risk_controller.text.isEmpty) {
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
                          kor_tool_type_controller.text,
                          eng_tool_type_controller.text,
                          model_name_controller.text,
                          kor_usage_controller.text,
                          eng_usage_controller.text,
                          kor_warning_controller.text,
                          eng_warning_controller.text,
                          kor_related_tool_controller.text,
                          eng_related_tool_controller.text,
                          kor_risk_controller.text,
                          eng_risk_controller.text,
                          resources_controller.text);
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
