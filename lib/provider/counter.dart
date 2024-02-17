import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Counter extends ChangeNotifier {
  late int cardIndex;

  void increment() {
    usedListViewInsideDetails[cardIndex].counter++;
    usedListViewInsideDetails[cardIndex]
        .timeOfRead!
        .add(DateFormat('hh:mm a  dd MMMM yyyy').format(DateTime.now()));
    notifyListeners();
  }

  void restart() {
    usedListViewInsideDetails[cardIndex].counter = 0;
    usedListViewInsideDetails[cardIndex].timeOfRead!.clear();
    notifyListeners();
  }
}
