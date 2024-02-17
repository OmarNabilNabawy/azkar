import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:azkar_alyam_y_allayla/provider/AppTheme.dart';
import 'package:azkar_alyam_y_allayla/provider/Fonts.dart';
import 'package:azkar_alyam_y_allayla/provider/counter.dart';
import 'package:azkar_alyam_y_allayla/screens/detailsScreen/firstHalfOfdetailsScreen.dart';
import 'package:azkar_alyam_y_allayla/screens/detailsScreen/secondHalfOfdetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:azkar_alyam_y_allayla/helpers/screenWidth.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardIndex = Provider.of<Counter>(context, listen: false).cardIndex;
    final fontsProvider = Provider.of<Fonts>(context, listen: false);
    final themeProvider = Provider.of<AppTheme>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: isMobilScreen() ? null : 60.h,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, size: isMobilScreen() ? 25 : 40),
          color: themeProvider.mycolorsIconsColor,
        ),
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            '﴿ ${usedListViewInsideDetails[cardIndex].title} ﴾',
            style: fontsProvider.textFamilyBold.copyWith(
                fontSize: (fontsProvider.fontSizeValue * 3.33).sp,
                color: themeProvider.mycolorsFontColor,
                height: 2),
          ),
        ),
        backgroundColor: themeProvider.mycolorsDetailsBackgroundColor,
        centerTitle: true,
      ),
      backgroundColor: themeProvider.mycolorsDetailsBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 10.h),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FirstHalfOfdetailsScreen(),
            SecondHalfOfdetailsScreen(),
          ],
        ),
      ),
    );
  }
}
