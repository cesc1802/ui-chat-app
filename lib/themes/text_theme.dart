import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text_styles.dart';

class AppTextTheme {
  static final textTheme = TextTheme(
    headline1: TextStyles.h1,
    headline2: TextStyles.h2,
    headline3: TextStyles.h3,
    headline4: TextStyles.h4,
    headline5: TextStyles.h5,
    bodyText1: TextStyles.bodyText1,
    bodyText2: TextStyles.bodyText2,
    caption: TextStyles.caption,
    subtitle1: TextStyle(color: AppColors.neutral_1), // <-- that's the one
  );
}
