import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _pageIdx = 0;
  int get pageIdx => _pageIdx;
  set pageIdx(int value) {
    _pageIdx = value;
    notifyListeners();
  }
}
