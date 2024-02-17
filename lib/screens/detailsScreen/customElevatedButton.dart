import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../provider/AppTheme.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? elevatedButtonChild;
  final double? height;
  final double? width;
  const CustomElevatedButton(
      {Key? key,
      this.onPressed,
      this.elevatedButtonChild,
      this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppTheme>(context,listen: false);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: themeProvider.mycolorsDetailsButtonsBackgroundColor,
          foregroundColor: themeProvider.mycolorsDetailsButtonsForgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          fixedSize: Size(width!.w, height!.h)),
      child: elevatedButtonChild,
    );
  }
}
