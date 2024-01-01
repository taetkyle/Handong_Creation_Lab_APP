import 'package:creationlab_app_front/pages/app_manage/deep_location/item_related/item_adding.dart';
import 'package:creationlab_app_front/pages/itemlist/powertoollist.dart';
import 'package:creationlab_app_front/pages/itemlist/type_sep.dart';
import 'package:creationlab_app_front/widget/master_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:creationlab_app_front/firebase_functions/item_related/items.dart';
import 'package:creationlab_app_front/widget/card.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/firebase_functions/item_related/itemcall.dart';

class itemManage extends StatefulWidget {
  const itemManage({super.key});

  @override
  State<itemManage> createState() => _itemManageState();
}

class _itemManageState extends State<itemManage> {
  List<Itemss> itemsList = [];

  @override
  void initState() {
    firstSetting();
    super.initState();
  }

  @override
  firstSetting() async {
    itemsList = await itemcallFireStore();
    if (itemsList.isNotEmpty) {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: const Text(
            "물품 관리",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          )),
      body: FutureBuilder(
        future: firstSetting(),
        builder: (context, snapshot) {
          if (snapshot.data != false) {
            return ListView.builder(
                itemCount: itemsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      masterCarditem(
                          itemsList[index].docId,
                          itemsList[index].korname,
                          itemsList[index].number.toString(),
                          itemsList[index].detail_info,
                          itemsList[index].resources,
                          itemsList[index].kortype),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                });
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
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
                          Icons.cancel,
                        ),
                        Text(
                          '취소',
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
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(itemAdding());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                        ),
                        Text(
                          '추가',
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
              ),
            ],
          )),
    );
  }
}
