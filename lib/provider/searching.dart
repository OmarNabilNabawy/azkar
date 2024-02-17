import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:flutter/material.dart';

class Searching extends ChangeNotifier {
  bool isSearching = false;
  List<ZakrModel> searchedList = [];
  TextEditingController searchController = TextEditingController();

  void search() {
    isSearching = true;
    notifyListeners();
  }

  void showSearchedList(List<ZakrModel> usedList, String inputValue) {
    searchedList =
        usedList.where((zakr) => zakr.title.contains(inputValue)).toList();
    notifyListeners();
  }

  void clearSearchField() {
    // لازم تحط الاثنين مع بعض علشان يسمع التاثير هناك في الشرط ده ويعيد بناء القائمة تاني
    // (MainScreen - MyListView - helper.item1.text.isEmpty)
    searchController.clear(); // <--
    searchedList = []; // <--
    notifyListeners();
  }

  void closeSearchAppBar() {
    if (searchController.text.isNotEmpty) {
      clearSearchField();
    }
    isSearching = false;
    notifyListeners();
  }
}
