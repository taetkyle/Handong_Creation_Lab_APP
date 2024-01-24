import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LangProvider extends ChangeNotifier {
  int _language = 0;
  int get language => _language;

  void changeToEng() {
    _language = 1;
    notifyListeners();
  }

  void changeToKor() {
    _language = 0;
    notifyListeners();
  }
}
