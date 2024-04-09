import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:azkar_alyam_y_allayla/provider/AppTheme.dart';
import 'package:azkar_alyam_y_allayla/provider/Fonts.dart';
import 'package:azkar_alyam_y_allayla/provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FirstHalfOfdetailsScreen extends StatelessWidget {
  const FirstHalfOfdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cardIndex = Provider.of<Counter>(context, listen: false).cardIndex;
    final fontsProvider = Provider.of<Fonts>(context, listen: false);
    final themeProvider = Provider.of<AppTheme>(context,listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: ScreenUtil().screenHeight * 0.45),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                usedListViewInsideDetails[cardIndex].content,
                style: fontsProvider.textFamily700.copyWith(
                    fontSize: (fontsProvider.fontSizeValue * 3).sp,
                    color: themeProvider.myAppTheme[0].mycolorsFontColor),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 0.8,
          color: themeProvider.myAppTheme[0].mycolorsDetailsDividerColor,
          height: 25.h,
          indent: 30.w,
          endIndent: 40.w,
        ),
      ],
    );
  }
}
