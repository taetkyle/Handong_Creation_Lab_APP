import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:creationlab_app_front/firebase_functions/items.dart';
import 'package:creationlab_app_front/widget/card.dart';
import 'package:get/get.dart';
import 'powertoollist.dart';
import 'type_sep.dart';
import 'package:creationlab_app_front/firebase_functions/itemcall.dart';

class itemList extends StatefulWidget {
  const itemList({super.key});

  @override
  State<itemList> createState() => _itemListState();
}

class _itemListState extends State<itemList> {
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
            "물품 리스트",
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
                      carditem(
                          itemsList[index].number.toString(),
                          itemsList[index].korname,
                          itemsList[index].kortype,
                          itemsList[index].detail_info),
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

      // Column(
      //   children: [
      //     carditem("1", "Hello", "전기", "1234"),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     carditem("2", "Hello", "전기", "1234"),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     carditem("3", "Hello", "전기", "1234"),
      //     const SizedBox(
      //       height: 10,
      //     ),
      //     carditem("4", "Hello", "전기", "1234")
      //   ],
      // ),
      bottomNavigationBar: Container(
          height: 60,
          color: Colors.black12,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Get.to(powertoollist());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.power_outlined,
                        ),
                        Text(
                          'Power Tool',
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
                    Get.to(typesep());
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                        ),
                        Text(
                          '분류 보기',
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