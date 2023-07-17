import 'package:flutter/material.dart';

class Themes {

  static double height = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.height / WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

  static final ThemeData light = ThemeData.light().copyWith(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10,
        backgroundColor: Colors.white,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        selectedIconTheme: IconThemeData(size: height * 0.024),
        unselectedIconTheme: IconThemeData(size: height * 0.024),
        selectedLabelStyle: TextStyle(fontSize: height * 0.012),
        unselectedLabelStyle: TextStyle(fontSize: height * 0.012),
        enableFeedback: false),
  );
}
