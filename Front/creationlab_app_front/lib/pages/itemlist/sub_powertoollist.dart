import 'package:flutter/material.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:provider/provider.dart';
import 'package:creationlab_app_front/functions/image_select.dart';

class subPowerToolList extends StatelessWidget {
  final String tooltype;
  final String modelname;
  final String warning;
  final String usage;
  final String related;
  final String resources;
  int lang = 0;

  subPowerToolList(this.tooltype, this.modelname, this.warning, this.usage,
      this.related, this.resources);

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 21, 104),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.035,
            ),
            Image.asset(
                height: MediaQuery.of(context).size.height * 0.4,
                imageSelect(tooltype)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Column(
              children: [
                Text(
                  tooltype,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "KoreanFont",
                    fontSize: 30,
                  ),
                ),
                Text(
                  tooltype,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "KoreanFont",
                    fontSize: 30,
                  ),
                ),
              ],
            )
          ])
        ],
      ),
    );
  }
}
