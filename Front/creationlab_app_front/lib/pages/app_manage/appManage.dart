import 'package:flutter/material.dart';

class appManage extends StatelessWidget {
  const appManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "어플 관리",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          )),
    );
  }
}
