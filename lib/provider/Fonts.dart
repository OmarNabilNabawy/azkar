import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends ChangeNotifier {
  double fontSizeValue = 6;
  TextStyle textFamily700 = GoogleFonts.amiri(fontWeight: FontWeight.w700);
  TextStyle textFamilyBold = GoogleFonts.amiri(fontWeight: FontWeight.bold);

  void changeFontSize(double inputValue) {
    fontSizeValue = inputValue;
    notifyListeners();
  }

  void selectFontFamily(int index) {
    switch (index) {
      case 0:
        textFamily700 = GoogleFonts.cairo(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.cairo(fontWeight: FontWeight.w700);
        break;
      case 1:
        textFamily700 = GoogleFonts.lalezar(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.lalezar(fontWeight: FontWeight.w700);
      case 2:
        textFamily700 = GoogleFonts.marhey(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.marhey(fontWeight: FontWeight.w700);
      case 3:
        textFamily700 = GoogleFonts.rakkas(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.rakkas(fontWeight: FontWeight.w700);
      case 4:
        textFamily700 = GoogleFonts.arefRuqaa(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.arefRuqaa(fontWeight: FontWeight.w700);
      case 5:
        textFamily700 = GoogleFonts.markaziText(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.markaziText(fontWeight: FontWeight.w700);
      default:
        textFamily700 = GoogleFonts.amiri(fontWeight: FontWeight.w700);
        textFamilyBold = GoogleFonts.amiri(fontWeight: FontWeight.w700);
    }
    notifyListeners();
  }
}

  