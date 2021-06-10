import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  int _selectedIndexOfMenuList =0;

  void setSelectedIndex (int i){
    _selectedIndexOfMenuList = i;
    notifyListeners();
  }
}