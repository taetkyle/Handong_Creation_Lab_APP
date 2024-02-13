import 'package:flutter/material.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:provider/provider.dart';
import 'package:creationlab_app_front/functions/image_select.dart';
import 'dart:js' as js;

class subPowerToolList extends StatelessWidget {
  final String tooltype;
  final String modelname;
  final String warning;
  final String usage;
  final String related;
  final String risk;
  final String resources;
  int lang = 0;

  subPowerToolList(this.tooltype, this.modelname, this.warning, this.usage,
      this.related, this.risk, this.resources);

  @override
  Widget build(BuildContext context) {
    lang = Provider.of<LangProvider>(context, listen: false).language;

    fontGen(String parts, String korType, String engType) {
      if (parts.isEmpty) {
        return Column();
      }
      return Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              Text(
                [korType, engType][lang],
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "KoreanFont",
                  fontSize: 30,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
              Flexible(
                child: Text(
                  parts,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 90, 90, 90),
                    fontFamily: "KoreanFont",
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.18,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            tooltype,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "KoreanFont",
              fontSize: 30,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 2, 21, 104),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Image.asset(
                      height: MediaQuery.of(context).size.height * 0.4,
                      imageSelect(tooltype)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                  Flexible(
                    child: Text(
                      "Risk: " + risk,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 101, 101),
                        fontFamily: "KoreanFont",
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.14,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              fontGen(modelname, "모델명", "Model Name"),
              fontGen(warning, "주의 사항", "WARNING"),
              fontGen(usage, "사용도", "Usage"),
              fontGen(related, "관련 도구", "Related Tools"),
            ],
          ),
        ),
        bottomNavigationBar: (resources.isNotEmpty)
            ? Container(
                height: 60,
                color: const Color.fromARGB(255, 2, 21, 104),
                child: InkWell(
                  onTap: () {
                    js.context.callMethod('open', [resources]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          color: Colors.white,
                          Icons.arrow_right_alt_outlined,
                        ),
                        Text(
                          'Resources',
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
              )
            : null);
  }
}
