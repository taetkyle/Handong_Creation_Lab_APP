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
      body: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        children: [
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
          Container(
              margin: const EdgeInsets.all(5),
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5))),
        ],
      ),
    );
  }
}
