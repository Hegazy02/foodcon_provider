import 'package:flutter/material.dart';

class PressedProv extends ChangeNotifier {
  String _follow = "متابعة";
  bool _switchHome = false;
  ///////////////

  String get follow => _follow;
  int _isSecondStep = 0;
  bool get switchHome => _switchHome;

  int get isSecondStep => _isSecondStep;

  //////////////////

  changeFollow() {
    if (_follow == "متابعة") {
      _follow = "متابع";
    } else {
      _follow = "متابعة";
    }

    notifyListeners();
  }

  changeSwitch() {
    _switchHome = !_switchHome;
    notifyListeners();
  }

  set isSecondStep(int val) {
    _isSecondStep = val;
    notifyListeners();
  }
}
