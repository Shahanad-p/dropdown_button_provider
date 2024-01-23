import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier {
  String selectedValue = 'Option1';

  void setSelectedValue(String val) {
    selectedValue = val;
    notifyListeners();
  }
}
