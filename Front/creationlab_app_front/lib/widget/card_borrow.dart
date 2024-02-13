import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget cardborrow(String username, String toolname, String date, context) {
  int contextSpace = 1;
  int contextFont = 3;

  return InkWell(
    onTap: () {},
    child: Container(
      height: 70,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 229, 228, 228),
          border: Border.all(
            color: const Color.fromARGB(255, 229, 228, 228),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            flex: contextSpace,
            child: const SizedBox(),
          ),
          Expanded(
              flex: 3,
              child: Text(
                username,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "KoreanFont",
                  fontSize: 20,
                ),
              )),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
              flex: 3,
              child: Text(
                toolname,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "KoreanFont",
                  fontSize: 20,
                ),
              )),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
              flex: 3,
              child: (MediaQuery.of(context).size.width > 600)
                  ? Text(
                      date,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "KoreanFont",
                        fontSize: 20,
                      ),
                    )
                  : Text(
                      date[2] + date[3] + date[4] + date[5] + date[6],
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "KoreanFont",
                        fontSize: 20,
                      ),
                    )),
          Expanded(
            flex: contextSpace,
            child: const SizedBox(),
          ),
        ],
      ),
    ),
    // const SizedBox(
    //   height: 10,
    // )
  );
}
