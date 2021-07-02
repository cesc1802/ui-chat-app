import 'package:flutter/material.dart';
import 'package:ui_chat_app/modules/welcome/welcome_screen.dart';
import 'package:ui_chat_app/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.appLightTheme,
        darkTheme: AppThemes.appDarkTheme,
        themeMode: ThemeMode.system, //default value
        home: SplashScreen());
  }
}
