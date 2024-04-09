import 'package:azkar_alyam_y_allayla/provider/AppTheme.dart';
import 'package:azkar_alyam_y_allayla/provider/Fonts.dart';
import 'package:azkar_alyam_y_allayla/provider/counter.dart';
import 'package:azkar_alyam_y_allayla/screens/detailsScreen/customElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:azkar_alyam_y_allayla/helpers/screenWidth.dart';
import 'package:azkar_alyam_y_allayla/helpers/spacer.dart';
import 'package:azkar_alyam_y_allayla/dataModel.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class SecondHalfOfdetailsScreen extends StatelessWidget {
  const SecondHalfOfdetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Counter>(context, listen: false);
    final fontProvider = Provider.of<Fonts>(context, listen: false);
    final themeProvider = Provider.of<AppTheme>(context, listen: false);
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                onPressed: () {
                  provider.increment();
                },
                elevatedButtonChild: Text(
                  'قَرأته',
                  style: fontProvider.textFamily700.copyWith(fontSize: 16.sp),
                ),
                height: isMobilScreen() ? 30 : 35,
                width: isMobilScreen() ? 100 : 90,
              ),
              widthSpace(10),
              Consumer<Counter>(
                builder: (context, counterProvider, child) {
                  return CircleAvatar(
                    radius: isMobilScreen() ? 25 : 37,
                    backgroundColor: themeProvider
                        .myAppTheme[0].mycolorsDetailsButtonsBackgroundColor,
                    foregroundColor: themeProvider
                        .myAppTheme[0].mycolorsDetailsButtonsForgroundColor,
                    child: Text(
                      '${usedListViewInsideDetails[counterProvider.cardIndex].counter}',
                      style:
                          fontProvider.textFamily700.copyWith(fontSize: 16.sp),
                    ),
                  );
                },
              ),
              widthSpace(10),
              CustomElevatedButton(
                onPressed: () => provider.restart(),
                elevatedButtonChild: Icon(
                  Icons.restart_alt,
                  size: isMobilScreen() ? 28 : 41,
                ),
                height: isMobilScreen() ? 30 : 35,
                width: isMobilScreen() ? 60 : 50,
              ),
              widthSpace(5),
              CustomElevatedButton(
                onPressed: () {
                  Share.share(
                      '﴿ ${usedListViewInsideDetails[provider.cardIndex].title} ﴾\n${usedListViewInsideDetails[provider.cardIndex].content}');
                },
                elevatedButtonChild: Icon(
                  Icons.share,
                  size: isMobilScreen() ? 26 : 41,
                ),
                height: isMobilScreen() ? 30 : 35,
                width: isMobilScreen() ? 60 : 50,
              ),
            ],
          ),
          heightSpace(5),
          Expanded(
            child: Consumer<Counter>(
              builder: (context, counterProvider, child) {
                return ListView.builder(
                  itemCount:
                      usedListViewInsideDetails[counterProvider.cardIndex]
                          .timeOfRead!
                          .length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      dense: true,
                      minVerticalPadding: 0,
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                      leading: Text('${index + 1} -',
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: themeProvider
                                  .myAppTheme[0].mycolorsFontColor)),
                      title: Text(
                        usedListViewInsideDetails[counterProvider.cardIndex]
                            .timeOfRead![index],
                        style: TextStyle(
                            fontSize: 14.sp,
                            color:
                                themeProvider.myAppTheme[0].mycolorsFontColor),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
