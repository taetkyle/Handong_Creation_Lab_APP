import 'package:flutter/material.dart';

class rules extends StatelessWidget {
  const rules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "사용 규칙",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          )),
    );
    ;
  }
}
