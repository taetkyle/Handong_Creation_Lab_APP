import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list_call.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:creationlab_app_front/widget/card_borrow.dart';
import 'borrowingpage.dart';
import 'package:get/get.dart';
import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list.dart';
// import 'package:creationlab_app_front/firebase_functions/borrow_related/create_borrow_list.dart';
import 'package:provider/provider.dart';
// LangProvider

class tool_borrow extends StatefulWidget {
  const tool_borrow({super.key});

  @override
  State<tool_borrow> createState() => _tool_borrowState();
}

class _tool_borrowState extends State<tool_borrow> {
  List<Borrowlist> borrowList = [];
  int lang = 0;
  final ScrollController _scrollController = ScrollController();
  double scrollRatio = 0;
  String scrollDirection = "";

  @override
  void initState() {
    _scrollController.addListener(() {
      scrollListener();
    });
    firstSetting();
    super.initState();
  }

  firstSetting() async {
    borrowList = await borrowlistcallFireStore();
    if (borrowList.isNotEmpty) {
      return true;
    }
  }

  scrollListener() async {
    setState(() {
      scrollRatio =
          _scrollController.offset / _scrollController.position.maxScrollExtent;
      scrollDirection =
          _scrollController.position.userScrollDirection.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
      appBar:
          (scrollDirection == "ScrollDirection.forward" || scrollRatio < 0.1)
              ? AppBar(
                  backgroundColor: const Color.fromARGB(255, 2, 21, 104),
                  title: Text(
                    ["대출 리스트", "Equipment Loan List"][lang],
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "KoreanFont",
                      fontSize: 30,
                    ),
                  ))
              : null,
      body: FutureBuilder(
        future: firstSetting(),
        builder: (context, snapshot) {
          if (snapshot.data != false) {
            return ListView.builder(
                itemCount: borrowList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      cardborrow(
                          borrowList[index].username,
                          borrowList[index].toolname,
                          borrowList[index].date,
                          context),
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
        child: InkWell(
          onTap: () {
            Get.to(borrowingpage());
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: <Widget>[
                const Icon(
                  color: Colors.white,
                  Icons.arrow_circle_right_outlined,
                ),
                Text(
                  ["대출하기", "Borrow"][lang],
                  // '대출하기',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "KoreanFont",
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
