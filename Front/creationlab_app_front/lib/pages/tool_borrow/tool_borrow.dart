import 'package:flutter/material.dart';
import 'package:creationlab_app_front/widget/card_borrow.dart';
import 'borrowingpage.dart';
import 'package:get/get.dart';

class tool_borrow extends StatefulWidget {
  const tool_borrow({super.key});

  @override
  State<tool_borrow> createState() => _tool_borrowState();
}

class _tool_borrowState extends State<tool_borrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 21, 104),
        title: const Text(
          "장비 대출",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "KoreanFont",
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            cardborrow("박경태", "dc 모터", "01/01/0000"),
            const SizedBox(
              height: 10,
            ),
            cardborrow("박경태", "dc 모터", "01/01/0000"),
            const SizedBox(
              height: 10,
            ),
            cardborrow("박경태", "dc 모터", "01/01/0000"),
            const SizedBox(
              height: 10,
            ),
            cardborrow("박경태", "dc 모터", "01/01/0000"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black12,
        child: InkWell(
          onTap: () {
            Get.to(borrowingpage());
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.arrow_circle_right_outlined,
                ),
                Text(
                  '대출하기',
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
    );
  }
}
