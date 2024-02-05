import 'package:flutter/material.dart';
import 'package:creationlab_app_front/provider/eng_kor_provider.dart';
import 'package:provider/provider.dart';

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

    return (lang == 0) ? Scaffold() : Scaffold();
  }
}
