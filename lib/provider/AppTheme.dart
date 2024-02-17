import 'package:azkar_alyam_y_allayla/myThemeModel.dart';
import 'package:flutter/material.dart';

// ===================================== Colors =========================================

Color gold = const Color(0xffDAA520);
Color white = const Color(0xffFFFFFF);
Color black = Colors.black;
Color darkGreen = const Color(0xff013220);
Color lightPurple = const Color(0xff7635c3);
Color darkPurple = const Color(0xff4B0082);
Color darkBlue = const Color(0xff000080);
Color lightBlue = const Color(0xff0047AB);
Color darkRed = const Color(0xff510c18);
Color lightRed = const Color(0xff690f20);
Color darkbrown = const Color(0xff2d0014);
Color lightbrown   = const Color(0xff58310E);
Color lightGold = const Color(0xffaf8d3a);

//=======================================================================================

class AppTheme extends ChangeNotifier {
  final themes = [
    MyTheme(bodyColor: darkGreen, fontColor: gold, isSelected: true),
    MyTheme(bodyColor: black, fontColor: gold),
    MyTheme(bodyColor: darkPurple, fontColor: white),
    MyTheme(bodyColor: darkBlue, fontColor: white),
    MyTheme(bodyColor: darkRed, fontColor: white),
    MyTheme(bodyColor: darkbrown, fontColor: lightGold),
  ];

  Color mycolorsAppBarsColor = darkGreen;
  Color mycolorsPagesBackgroudColor = white;
  Color mycolorsNavigationBarBackground = darkGreen;

  Color mycolorsZakrCardColor = darkGreen;
  Color mycolorsFontColor = gold;
  Color mycolorsIconsColor = gold;

  Color mycolorsDetailsBackgroundColor = darkGreen;
  Color mycolorsDetailsDividerColor = gold;
  Color mycolorsDetailsButtonsForgroundColor = darkGreen;
  Color mycolorsDetailsButtonsBackgroundColor = gold;

  Color mycolorsSettingsTemplateFontColor = gold;
  Color mycolorsSettingsTemplateContainerColor = darkGreen;
  Color mycolorsSettingsSliderthumbColor = darkGreen;
  Color mycolorsSettingContainersBordersColor = darkGreen;
  Color mycolorsSettingFontFamilyColor = gold;
  Color mycolorsSelectedThemeBorderColor = gold;

  void selectedThemeContainer(int index) {
    for (var i = 0; i < themes.length; i++) {
      themes[i].isSelected = false;
    }
    themes[index].isSelected = true;
    notifyListeners();
  }

  void selectedTheme(int index) {
    switch (index) {
      case 0:
        mycolorsAppBarsColor = darkGreen;
        mycolorsPagesBackgroudColor = white;
        mycolorsNavigationBarBackground = darkGreen;

        mycolorsZakrCardColor = darkGreen;
        mycolorsFontColor = gold;
        mycolorsIconsColor = gold;

        mycolorsDetailsBackgroundColor = darkGreen;
        mycolorsDetailsDividerColor = gold;
        mycolorsDetailsButtonsForgroundColor = darkGreen;
        mycolorsDetailsButtonsBackgroundColor = gold;

        mycolorsSettingsTemplateFontColor = gold;
        mycolorsSettingsTemplateContainerColor = darkGreen;
        mycolorsSettingsSliderthumbColor = darkGreen;
        mycolorsSettingContainersBordersColor = darkGreen;
        mycolorsSettingFontFamilyColor = gold;
        mycolorsSelectedThemeBorderColor = gold;
        break;
      case 1:
        mycolorsAppBarsColor = black;
        mycolorsPagesBackgroudColor = black;
        mycolorsNavigationBarBackground = black;

        mycolorsZakrCardColor = black;
        mycolorsFontColor = gold;
        mycolorsIconsColor = gold;

        mycolorsDetailsBackgroundColor = black;
        mycolorsDetailsDividerColor = gold;
        mycolorsDetailsButtonsForgroundColor = black;
        mycolorsDetailsButtonsBackgroundColor = gold;

        mycolorsSettingsTemplateFontColor = black;
        mycolorsSettingsTemplateContainerColor = gold;
        mycolorsSettingsSliderthumbColor = gold;
        mycolorsSettingContainersBordersColor = gold;
        mycolorsSettingFontFamilyColor = gold;
        mycolorsSelectedThemeBorderColor = gold;
        break;
      case 2:
        mycolorsAppBarsColor = darkPurple;
        mycolorsPagesBackgroudColor = lightPurple;
        mycolorsNavigationBarBackground = darkPurple;

        mycolorsZakrCardColor = darkPurple;
        mycolorsFontColor = white;
        mycolorsIconsColor = white;

        mycolorsDetailsBackgroundColor = darkPurple;
        mycolorsDetailsDividerColor = white;
        mycolorsDetailsButtonsForgroundColor = white;
        mycolorsDetailsButtonsBackgroundColor = lightPurple;

        mycolorsSettingsTemplateFontColor = white;
        mycolorsSettingsTemplateContainerColor = darkPurple;
        mycolorsSettingsSliderthumbColor = white;
        mycolorsSettingContainersBordersColor = darkPurple;
        mycolorsSettingFontFamilyColor = white;
        mycolorsSelectedThemeBorderColor = white;
        break;
      case 3:
        mycolorsAppBarsColor = darkBlue;
        mycolorsPagesBackgroudColor = lightBlue;
        mycolorsNavigationBarBackground = darkBlue;

        mycolorsZakrCardColor = darkBlue;
        mycolorsFontColor = white;
        mycolorsIconsColor = white;

        mycolorsDetailsBackgroundColor = darkBlue;
        mycolorsDetailsDividerColor = white;
        mycolorsDetailsButtonsForgroundColor = white;
        mycolorsDetailsButtonsBackgroundColor = lightBlue;

        mycolorsSettingsTemplateFontColor = white;
        mycolorsSettingsTemplateContainerColor = darkBlue;
        mycolorsSettingsSliderthumbColor = white;
        mycolorsSettingContainersBordersColor = darkBlue;
        mycolorsSettingFontFamilyColor = white;
        mycolorsSelectedThemeBorderColor = white;
        break;
      case 4:
        mycolorsAppBarsColor = darkRed;
        mycolorsPagesBackgroudColor = lightRed;
        mycolorsNavigationBarBackground = darkRed;

        mycolorsZakrCardColor = darkRed;
        mycolorsFontColor = white;
        mycolorsIconsColor = white;

        mycolorsDetailsBackgroundColor = darkRed;
        mycolorsDetailsDividerColor = white;
        mycolorsDetailsButtonsForgroundColor = white;
        mycolorsDetailsButtonsBackgroundColor = lightRed;

        mycolorsSettingsTemplateFontColor = white;
        mycolorsSettingsTemplateContainerColor = darkRed;
        mycolorsSettingsSliderthumbColor = white;
        mycolorsSettingContainersBordersColor = darkRed;
        mycolorsSettingFontFamilyColor = white;
        mycolorsSelectedThemeBorderColor = white;
        break;
      case 5:
        mycolorsAppBarsColor = darkbrown;
        mycolorsPagesBackgroudColor = lightbrown;
        mycolorsNavigationBarBackground = darkbrown;

        mycolorsZakrCardColor = darkbrown;
        mycolorsFontColor = lightGold;
        mycolorsIconsColor = lightGold;

        mycolorsDetailsBackgroundColor = darkbrown;
        mycolorsDetailsDividerColor = lightGold;
        mycolorsDetailsButtonsForgroundColor = lightGold;
        mycolorsDetailsButtonsBackgroundColor = lightbrown;

        mycolorsSettingsTemplateFontColor = lightGold;
        mycolorsSettingsTemplateContainerColor = darkbrown;
        mycolorsSettingsSliderthumbColor = lightGold;
        mycolorsSettingContainersBordersColor = lightGold;
        mycolorsSettingFontFamilyColor = lightGold;
        mycolorsSelectedThemeBorderColor = lightGold;
        break;
    }
    notifyListeners();
  }
}

