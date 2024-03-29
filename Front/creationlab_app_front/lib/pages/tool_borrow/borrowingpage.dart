import 'package:creationlab_app_front/pages/homepage.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/firebase_functions/borrow_related/create_borrow_list.dart';
import 'package:provider/provider.dart';
// LangProvider

class borrowingpage extends StatefulWidget {
  const borrowingpage({super.key});

  @override
  State<borrowingpage> createState() => _borrowingpageState();
}

class _borrowingpageState extends State<borrowingpage> {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController toolnameEditingController = TextEditingController();
  Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
  Color textColor = const Color.fromARGB(255, 2, 21, 104);
  int lang = 0;
  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

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
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: ['본인 이름', 'your name'][lang],
                hintText: ['본인 이름을 작성해주세요', 'Please write your name'][lang],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: toolnameEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: ['장비 이름', 'Tool name'][lang],
                hintText: [
                  '빌리실 장비 이름을 작성해주세요',
                  'Please write the tool\'s name'
                ][lang],
              ),
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
                        ['취소', 'cancel'][lang],
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
                        ['빌리기', 'Borrow'][lang],
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "KoreanFont",
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (usernameEditingController.text.isNotEmpty &&
                        toolnameEditingController.text.isNotEmpty) {
                      createBorrowList(
                          usernameEditingController.text,
                          toolnameEditingController.text,
                          DateFormat('yyyy/MM/dd').format(DateTime.now()));
                      Get.offAll(() => Homepage());
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "KoreanFont",
                              fontSize: 20,
                            ),
                            ['오류', "Error"][lang],
                          ),
                          content: Text(
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: "KoreanFont",
                                fontSize: 20,
                              ),
                              [
                                '입력정보를 확인해 주세요',
                                'Please check typed values'
                              ][lang]),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: Text(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: "KoreanFont",
                                    fontSize: 20,
                                  ),
                                  ['확인', "OK"][lang]),
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



// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:get/get.dart';
// import 'masterpage.dart';

// class administer_varify extends StatefulWidget {
//   const administer_varify({super.key});

//   @override
//   State<administer_varify> createState() => _administer_varifyState();
// }

// class _administer_varifyState extends State<administer_varify> {
//   TextEditingController usernameEditingController = TextEditingController();
//   TextEditingController passwordEditingController = TextEditingController();
//   Color buttonColor = const Color.fromARGB(255, 2, 21, 104);
//   Color textColor = const Color.fromARGB(255, 2, 21, 104);

//   @override
//   void initState() {
//     SchedulerBinding.instance!.addPostFrameCallback((_) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('알림'),
//           content: const Text('해당 기능에 접근하시려면 운영자 아이디로 로그인 해주세요'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'OK'),
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       );
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     opacity: 0.3,
//                     fit: BoxFit.fitHeight,
//                     image: AssetImage(
//                       'assets/image/handong_logo_small.png',
//                     ))),
//             height: 200,
//             child: const Center(
//               child: Text(
//                 "CreationLab App",
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 90, 90, 90),
//                   fontFamily: "KoreanFont",
//                   fontSize: 70,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//             child: TextField(
//               controller: usernameEditingController,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: '아이디',
//                   hintText: '운영자 이메일을 입력해주세요'),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//             child: TextField(
//               controller: passwordEditingController,
//               obscureText: true,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: '비밀번호',
//                   hintText: '운영자 비밀번호를 입력해주세요'),
//             ),
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           Row(
//             children: [
//               const Expanded(flex: 2, child: SizedBox()),
//               Expanded(
//                 flex: 6,
//                 child: InkWell(
//                   child: Container(
//                     height: 60,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10)),
//                         color: buttonColor),
//                     child: const Center(
//                       child: Text(
//                         "취소",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: "KoreanFont",
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                   onTap: () {
//                     Get.back();
//                   },
//                 ),
//               ),
//               const Expanded(flex: 4, child: SizedBox()),
//               Expanded(
//                 flex: 6,
//                 child: InkWell(
//                   child: Container(
//                     height: 60,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10)),
//                         color: buttonColor),
//                     child: const Center(
//                       child: Text(
//                         "로그인",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: "KoreanFont",
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                   onTap: () {
//                     Get.to(() => masterpage());
//                   },
//                 ),
//               ),
//               const Expanded(flex: 2, child: SizedBox()),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
