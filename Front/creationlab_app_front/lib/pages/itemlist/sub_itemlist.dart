import 'dart:js' as js;
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:creationlab_app_front/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
// LangProvider

class subItemList extends StatelessWidget {
  final String korname;
  final String number;
  final String detail_info;
  final String resources;
  final String kortype;
  int lang = 0;

  subItemList(this.korname, this.number, this.detail_info, this.resources,
      this.kortype);

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          // title: Text(
          //   ["물품 리스트", "Item Lists"][lang],
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontFamily: "KoreanFont",
          //     fontSize: 30,
          //   ),
          // ),
        ),
        body: Column(children: [
          carditem(number, korname, kortype, detail_info, resources),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              const Expanded(flex: 3, child: SizedBox()),
              // const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                  flex: 15,
                  child: Center(
                    child: Text(
                      detail_info,
                      style: const TextStyle(
                        // color: Color.fromARGB(255, 90, 90, 90),
                        fontFamily: "KoreanFont",
                        fontSize: 20,
                      ),
                    ),
                  )),
              const Expanded(flex: 3, child: SizedBox()),
            ],
          ),
        ]),
        bottomNavigationBar: (resources != "aa")
            ? Container(
                height: 60,
                color: Colors.black12,
                child: InkWell(
                  onTap: () {
                    js.context.callMethod('open', [resources]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_right_alt_outlined,
                        ),
                        Text(
                          'Resources',
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
              )
            : null);
  }
}
