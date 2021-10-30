import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color primaryColor = Color(0xffff3008);
Color scaffoldBgColor = Color(0xffe3ebfa);
Color hyperlinkColor = Color(0xff3c6380);
Color blueColor = Colors.blue.shade800;
Color skyBlueColor = Color(0xff29ABE2);
Color purpleColor = Color(0xff2E3192);
Color logoColor = Color(0xff3c6480);
Color blackColor = Colors.black;
Color whiteColor = Colors.white;
Color greyColor = Colors.grey;
Color greenColor = Color(0xff3CAD4D);
Color lightGreenColor = Color(0xffD5FDE0);
Color lightRedColor = Color(0xffFDD5D5);
Color redColor = Color(0xffFF0000);
void changeStatusBarColor() => SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: scaffoldBgColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
