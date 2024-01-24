import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:creationlab_app_front/firebase_functions/item_related/items.dart';
import 'package:creationlab_app_front/widget/card.dart';
import 'package:get/get.dart';
import 'powertoollist.dart';
import 'type_sep.dart';
import 'package:creationlab_app_front/firebase_functions/item_related/itemcall.dart';
import 'package:provider/provider.dart';
// LangProvider

class itemList extends StatefulWidget {
  const itemList({super.key});

  @override
  State<itemList> createState() => _itemListState();
}

class _itemListState extends State<itemList> {
  List<Itemss> itemsList = [];
  int lang = 0;

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
    lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
          title: Text(
            ["물품 리스트", "Item Lists"][lang],
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
                      (lang == 0)
                          ? carditem(
                              itemsList[index].number.toString(),
                              itemsList[index].korname,
                              itemsList[index].kortype,
                              itemsList[index].detail_info,
                              itemsList[index].resources)
                          : carditem(
                              itemsList[index].number.toString(),
                              itemsList[index].engname,
                              itemsList[index].engtype,
                              itemsList[index].detail_info,
                              itemsList[index].resources),
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
          color: const Color.fromARGB(255, 2, 21, 104),
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
                          color: Colors.white,
                          Icons.power_outlined,
                        ),
                        Text(
                          'Power Tool',
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
                    Get.to(typesep());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        const Icon(
                          color: Colors.white,
                          Icons.search,
                        ),
                        Text(
                          ["분류 보기", "Seperation"][lang],
                          style: const TextStyle(
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
