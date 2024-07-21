import 'package:flutter/material.dart';

class PerritoProvider extends ChangeNotifier {
  String _name = "Perrito Lucas wowow";

  String get name => _name;

  set name(String newName) {
    _name = newName;
    notifyListeners();
  }
}
