import 'package:flutter/material.dart';

class FixedProvider with ChangeNotifier {
  // Device Size 설정
  double _deviceWidth;
  double _deviceHeight;

  void setDeviceWidth(value) => _deviceWidth = value;
  void setDeviceHeight(value) => _deviceHeight = value;

  get deviceWidth => _deviceWidth;
  get deviceHeight => _deviceHeight;
}
