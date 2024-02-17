import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:flutter/material.dart';

class Favorite extends ChangeNotifier {
  List<ZakrModel> favoriteListView = [];

  void addToFavorites(int cardIndex, List<ZakrModel> usedList) {
    usedList[cardIndex].isFavor = !usedList[cardIndex].isFavor;
    favoriteListView = usedList.where((zakr) => zakr.isFavor).toList();
    notifyListeners();
  }

  void removeFromFavorites(int cardIndex, List<ZakrModel> usedList) {
    for (var zakr in zakrMainList) {
      if (zakr.title == usedList[cardIndex].title) {
        zakr.isFavor = false;
      }
    }
    if (usedList != favoriteListView) {
      favoriteListView
          .removeWhere((zakr) => zakr.title == usedList[cardIndex].title);
    }

    usedList.removeAt(cardIndex);
    notifyListeners();
  }
}
