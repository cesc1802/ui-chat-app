import 'package:flutter/material.dart';
import 'package:ui_chat_app/themes/text_theme.dart';

import 'app_colors.dart';

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

class AppThemes {
  static final appLightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    textTheme: AppTextTheme.textTheme.apply(
      bodyColor: AppColors.contentColorLightTheme,
    ),
    colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: AppColors.contentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
    ),
  );

  static final appDarkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.contentColorLightTheme,
    appBarTheme: appBarTheme,
    textTheme: AppTextTheme.textTheme.apply(
      bodyColor: AppColors.contentColorDarkTheme,
    ),
    colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        error: AppColors.errorColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.contentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: AppColors.contentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
    ),
  );
  // static final appTheme = ThemeData.light().copyWith(
  //   scaffoldBackgroundColor: Colors.white,
  //   primaryColor: AppColors.primaryColor,
  //   textTheme: AppTextTheme.textTheme.apply(
  //     displayColor: AppColors.neutral_1,
  //     bodyColor: AppColors.neutral_1,
  //   ),
  //   inputDecorationTheme: InputDecorationTheme(
  //     isDense: true,
  //     contentPadding: const EdgeInsets.all(Dimens.gap_dp16),
  //     focusedBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(Dimens.gap_dp8),
  //       borderSide: BorderSide(color: AppColors.inputBorder, width: 1.0),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderRadius: BorderRadius.circular(Dimens.gap_dp8),
  //       borderSide: BorderSide(color: AppColors.inputBorder, width: 1.0),
  //     ),
  //     hintStyle:
  //         AppTextTheme.textTheme.bodyText1!.apply(color: AppColors.neutral_3),
  //   ),
  //   iconTheme: IconThemeData(color: AppColors.neutral_1),
  //   appBarTheme: AppBarTheme(
  //     color: Colors.white,
  //     elevation: 0.0,
  //     brightness: Brightness.light,
  //     iconTheme: IconThemeData(
  //       color: AppColors.neutral_1,
  //       size: 18,
  //     ),
  //     centerTitle: true,
  //   ),
  //   textButtonTheme: TextButtonThemeData(
  //     style: ButtonStyle(
  //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  //       padding: MaterialStateProperty.all<EdgeInsets>(
  //         EdgeInsets.symmetric(vertical: Dimens.gap_dp16),
  //       ),
  //       backgroundColor:
  //           MaterialStateProperty.all<Color>(AppColors.primaryColor),
  //       overlayColor: MaterialStateProperty.all<Color>(
  //         Colors.white.withOpacity(0.2),
  //       ),
  //       foregroundColor: MaterialStateProperty.all<Color>(
  //         Colors.white,
  //       ),
  //       textStyle: MaterialStateProperty.all<TextStyle>(
  //         AppTextTheme.textTheme.headline5!,
  //       ),
  //       shape: MaterialStateProperty.all<OutlinedBorder>(
  //         RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(Dimens.gap_dp8),
  //           side: BorderSide(
  //             width: 0,
  //             color: Colors.transparent,
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}
