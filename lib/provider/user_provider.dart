import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String _name = "El usuario aun no se registro";
  String get name => _name;

  set name(String newName) {
    _name = newName;
    notifyListeners();
  }
}
