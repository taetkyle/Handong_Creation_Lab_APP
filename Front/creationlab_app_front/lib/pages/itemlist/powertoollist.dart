import 'package:flutter/material.dart';

class powertoollist extends StatelessWidget {
  const powertoollist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "Power Tool",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          )),
    );
  }
}
