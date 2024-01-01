import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list_call.dart';
import 'package:creationlab_app_front/firebase_functions/item_related/itemcall.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'masterpage.dart';
import 'package:creationlab_app_front/firebase_functions/admin_related/admin.dart';
import 'package:creationlab_app_front/firebase_functions/admin_related/admin_id_pw_call.dart';

class administer_varify extends StatefulWidget {
  const administer_varify({super.key});

  @override
  State<administer_varify> createState() => _administer_varifyState();
}

class _administer_varifyState extends State<administer_varify> {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);
  Admin? admin;

  @override
  firstSetting() async {
    admin = await AdmincallFireStore();
    if (admin?.id != "") {
      return true;
    }
  }

  @override
  void initState() {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('알림'),
          content: const Text('해당 기능에 접근하시려면 운영자 아이디로 로그인 해주세요'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
    firstSetting();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              controller: usernameEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '아이디',
                  hintText: '운영자 이메일을 입력해주세요'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: passwordEditingController,
              obscureText: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                  hintText: '운영자 비밀번호를 입력해주세요'),
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
                        "로그인",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "KoreanFont",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (usernameEditingController.text == admin?.id &&
                        passwordEditingController.text == admin?.pw) {
                      Get.to(() => masterpage());
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('오류'),
                          content: const Text('아이디나 비밀번호가 일치하지 않습니다'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('확인'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
              const Expanded(flex: 2, child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
