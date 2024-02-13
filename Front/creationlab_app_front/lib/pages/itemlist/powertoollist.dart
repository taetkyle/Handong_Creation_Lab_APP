import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:creationlab_app_front/firebase_functions/tools_related/tools.dart';
import 'package:creationlab_app_front/firebase_functions/tools_related/toolscall.dart';
import 'package:creationlab_app_front/widget/card_powertool.dart';

class powertoollist extends StatefulWidget {
  const powertoollist({Key? key});

  @override
  State<powertoollist> createState() => _powertoollistState();
}

class _powertoollistState extends State<powertoollist> {
  int lang = 0;
  List<Tools> toolsList = [];

  @override
  void initState() {
    thisfirstSetting();
    super.initState();
  }

  Future<void> thisfirstSetting() async {
    toolsList = await itemcallFireStore();
  }

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 21, 104),
        title: const Text(
          "Tools",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "KoreanFont",
            fontSize: 30,
          ),
        ),
      ),
      body: FutureBuilder(
        future: thisfirstSetting(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              children: toolsList.map((tool) {
                return Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: (lang == 0)
                            ? carditem(
                                tool.kor_tool_type,
                                tool.model_name,
                                tool.kor_warning,
                                tool.kor_usage,
                                tool.kor_related_tool,
                                tool.resources,
                                tool.kor_risk)
                            : carditem(
                                tool.eng_tool_type,
                                tool.model_name,
                                tool.eng_warning,
                                tool.eng_usage,
                                tool.eng_related_tool,
                                tool.resources,
                                tool.eng_risk)),

                    // const SizedBox(
                    //   height: 10,
                    // ),
                  ],
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
