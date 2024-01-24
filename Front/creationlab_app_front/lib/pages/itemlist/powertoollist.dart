import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class powertoollist extends StatelessWidget {
  // const powertoollist({super.key});
  int lang = 0;

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;
    print(lang);
    print("네");
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
              // color: Colors.blueGrey,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(children: [
              // Text()
              Text(["Hello", "안녕"][lang]),
              const Text("안녕"),
              const Text("hello"),
              const Text("hello"),
            ]),
          ),
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
