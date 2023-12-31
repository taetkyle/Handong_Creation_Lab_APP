import 'package:creationlab_app_front/firebase_functions/item_related/item_delete.dart';
import 'package:creationlab_app_front/pages/app_manage/masterpage.dart';
import 'package:creationlab_app_front/widget/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/functions/sep_kor_type_color.dart';
import 'package:creationlab_app_front/widget/card_withoutfunctions.dart';

class subItemManage extends StatelessWidget {
  final String docId;
  // final String engname;
  final String korname;
  final String number;
  final String detail_info;
  final String resources;
  final String kortype;
  // final String engtype;

  subItemManage(
    this.docId,
    this.korname,
    this.number,
    this.detail_info,
    this.resources,
    this.kortype,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cardWithoutFunctions(
        number,
        korname,
        kortype,
      ),
      bottomNavigationBar: Container(
          height: 60,
          color: const Color.fromARGB(255, 2, 21, 104),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          color: Colors.white,
                          Icons.cancel,
                        ),
                        Text(
                          '취소',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "KoreanFont",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    deleteItemDoc(docId);
                    Get.to(const masterpage());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          color: Colors.white,
                          Icons.delete,
                        ),
                        Text(
                          '삭제',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "KoreanFont",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
