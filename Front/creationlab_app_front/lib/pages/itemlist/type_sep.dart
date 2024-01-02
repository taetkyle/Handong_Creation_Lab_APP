import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:creationlab_app_front/widget/type_sep_eachline.dart';

class typesep extends StatelessWidget {
  const typesep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "물품 분류도",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("컴퓨터 관련"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("아두이노 관련"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("3d 프린터 관련"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("전기&전자"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("DC 모터관련"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("스텝 모터 관련"),
          const SizedBox(
            height: 40,
          ),
          typeSepEachLine("모터 관련"),
          const SizedBox(
            height: 40,
          ),
        ]),
      ),
    );
  }
}
