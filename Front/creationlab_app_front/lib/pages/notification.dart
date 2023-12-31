import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "유의 사항",
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
