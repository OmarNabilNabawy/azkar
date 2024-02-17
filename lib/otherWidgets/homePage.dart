import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:azkar_alyam_y_allayla/commonWidgets/searchingAppBar.dart';
import 'package:azkar_alyam_y_allayla/helpers/screenWidth.dart';
import 'package:azkar_alyam_y_allayla/helpers/spacer.dart';
import 'package:azkar_alyam_y_allayla/otherWidgets/appBarTitleText.dart';
import 'package:azkar_alyam_y_allayla/otherWidgets/notifications.dart';
import 'package:azkar_alyam_y_allayla/provider/AppTheme.dart';
import 'package:azkar_alyam_y_allayla/provider/searching.dart';
import 'package:azkar_alyam_y_allayla/screens/favoriteScreen/favoriteScreen.dart';
import 'package:azkar_alyam_y_allayla/screens/mainScreen/mainScreen.dart';
import 'package:azkar_alyam_y_allayla/screens/settingsScreen/settingsScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
      if (isAllowed && !NotificationService().createdNotification) {
        NotificationService().sendNotification();
        NotificationService().createdNotification = true;
      }
    });
    super.initState();
  }

  int index = 0;
  final pages = [
    const MainScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];
  final appBarTitle = [
    const AppBarTitleText(title: 'اذكار اليوم والليلة'),
    const AppBarTitleText(title: 'الاذكار المفضلة'),
    const AppBarTitleText(title: ' الإعدادات'),
  ];
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppTheme>(context);
    print('===============================HomePage');
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize:
            isMobilScreen() ? Size.fromHeight(43.h) : Size.fromHeight(37.h),
        child: Consumer<Searching>(
          builder: (context, search, child) {
            return search.isSearching
                ? SearchingAppBar(pageIndex: index)
                : AppBar(
                    backgroundColor: themeProvider.mycolorsAppBarsColor,
                    centerTitle: true,
                    title: appBarTitle[index],
                    actions: [
                      index == 2
                          ? const SizedBox()
                          : IconButton(
                              onPressed: () {
                                search.search();
                              },
                              icon: Icon(
                                Icons.search,
                                size: isMobilScreen() ? 30 : 42,
                                color: themeProvider.mycolorsIconsColor,
                              ),
                            ),
                      widthSpace(10)
                    ],
                  );
          },
        ),
      ),
      body: pages[index],
      backgroundColor: themeProvider.mycolorsPagesBackgroudColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        height: isMobilScreen() ? 42.h : 40.h,
        animationDuration: const Duration(milliseconds: 450),
        color: themeProvider.mycolorsNavigationBarBackground,
        buttonBackgroundColor: themeProvider.mycolorsNavigationBarBackground,
        backgroundColor: themeProvider.mycolorsIconsColor,
        items: <Widget>[
          Icon(Icons.home, size: 23.w, color: themeProvider.mycolorsIconsColor),
          Icon(Icons.star, size: 23.w, color: themeProvider.mycolorsIconsColor),
          // عملت ده هنا علشان لما اغير الالوان الايكون بتاع الاعدادات يتغير لونه علطول
          Consumer<AppTheme>(
            builder: (context, value, child) {
              return Icon(
                Icons.settings,
                size: 23.w,
                color: themeProvider.mycolorsIconsColor,
              );
            },
          ),
        ],
        onTap: (selectedIndex) {
          setState(() => index = selectedIndex);
        },
      ),
    );
  }
}
