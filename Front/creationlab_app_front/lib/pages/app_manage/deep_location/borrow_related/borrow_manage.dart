import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list_call.dart';
import 'package:creationlab_app_front/widget/master_card_borrow.dart';
import 'package:provider/provider.dart';
// LangProvider
import 'package:get/get.dart';
import 'package:creationlab_app_front/firebase_functions/borrow_related/borrow_list.dart';

class borrowManage extends StatefulWidget {
  const borrowManage({super.key});

  @override
  State<borrowManage> createState() => _borrowManageState();
}

class _borrowManageState extends State<borrowManage> {
  List<Borrowlist> borrowList = [];

  @override
  void initState() {
    firstSetting();
    super.initState();
  }

  @override
  firstSetting() async {
    borrowList = await borrowlistcallFireStore();
    if (borrowList.isNotEmpty) {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    int lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 21, 104),
        title: Text(
          ["대출 관리", "Borrow Manage"][lang],
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "KoreanFont",
            fontSize: 30,
          ),
        ),
      ),
      body: FutureBuilder(
        future: firstSetting(),
        builder: (context, snapshot) {
          if (snapshot.data != false) {
            return ListView.builder(
                itemCount: borrowList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      masterCardborrow(
                        borrowList[index].docId,
                        borrowList[index].username,
                        borrowList[index].toolname,
                        borrowList[index].date,
                      ),
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
    );
  }
}
