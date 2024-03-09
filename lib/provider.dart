import 'package:flutter/material.dart';

class ChangeRadio extends ChangeNotifier {
  String? selectedRadioValue;

  valuChange(value) {
    selectedRadioValue = value;
    notifyListeners();
  }
}
