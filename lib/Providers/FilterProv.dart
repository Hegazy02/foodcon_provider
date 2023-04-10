import 'package:flutter/material.dart';
import 'package:foodcon_provider/Models/RecipeModel.dart';

class FilterProv extends ChangeNotifier {
  List<RecipeModel> _page1FilteredList = [];
  List<RecipeModel> _page2FilteredList = [];
  List<RecipeModel> _chefFilteredList = [];
  int _isGridPressed = 1;
  int _isCatePressed = 0;
  int _fullScreenIndex = 0;

  //////////////////
  List<RecipeModel> get fil1 => _page1FilteredList;
  List<RecipeModel> get fil2 => _page2FilteredList;
  List<RecipeModel> get chefFilteredList => _chefFilteredList;
  int get isGird => _isGridPressed;
  int get isCate => _isCatePressed;
  int get ScreenIndex => _fullScreenIndex;

  ///////////////////////
  set fil1(List<RecipeModel> val) {
    _page1FilteredList = val;
    notifyListeners();
  }

  set fil2(List<RecipeModel> val) {
    _page2FilteredList = val;
    notifyListeners();
  }

  set chefFilteredList(List<RecipeModel> val) {
    _chefFilteredList = val;
    notifyListeners();
  }

  set isGird(val) {
    _isGridPressed = val;
    notifyListeners();
  }

  set isCate(val) {
    _isCatePressed = val;
    notifyListeners();
  }

  set ScreenIndex(val) {
    _fullScreenIndex = val;
    notifyListeners();
  }

  refresh() {
    notifyListeners();
  }
}
