import 'package:creationlab_app_front/pages/app_manage/deep_location/borrow_related/borrow_manage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:creationlab_app_front/widget/card_borrow.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list_check.dart';

class subBorrowManage extends StatelessWidget {
  final String docId;
  final String username;
  final String toolname;
  final String date;

  subBorrowManage(this.docId, this.username, this.toolname, this.date);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cardborrow(username, toolname, date),
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
                    deleteDoc(docId);
                    Get.offAll(const borrowManage());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          color: Colors.white,
                          Icons.check,
                        ),
                        Text(
                          '반납 확인',
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
