import 'package:flutter/material.dart';

import 'color_constant.dart';
import 'dialogtheme_constant.dart';
import 'textstyle_constant.dart';

///light 모드
ThemeData kThemeDataLight = ThemeData(
  fontFamily: 'MaruBuri-Bold',

//기본 글자색
  textTheme: TextTheme(
    displayLarge: headline1Light,
    displayMedium: headline2Light,
    displaySmall: headline3Light,
    headlineMedium: headline4Light,
    headlineSmall: headline5Light,
    titleLarge: headline6Light,
    titleMedium: subtitle1Light,
    titleSmall: subtitle2Light,
    bodyLarge: bodyText1Light,
    bodyMedium: bodyText2Light,
    labelSmall: overlineLight,
    labelLarge: buttonLight,
    bodySmall: captionLight,
  ),
//배경색
  canvasColor: const Color(0xffffffff),
//앱바
  appBarTheme: AppBarTheme(
//앱바 버튼색
    foregroundColor: workShopBlack,
//앱바 폰트색
//     titleTextStyle: TextStyle(
//       fontFamily: 'MaruBuri-Bold',
//       fontSize: 20.0,
//       color: workShopBlack,
//     ),
//앱바 배경색
    backgroundColor: const Color(0xffffffff),
    elevation: 1.0,
  ),

  //대화창 테마
  // dialogTheme: kDialogThemeLight,
  dialogBackgroundColor: workShopGreySurface,

  //스낵바 테마
  snackBarTheme: SnackBarThemeData(
    contentTextStyle:
        const TextStyle(fontFamily: 'MaruBuri-Bold', color: Color(0xffffffff)),
    actionTextColor: workShopYellow,
  ),

  colorScheme: ColorScheme.light(
    primary: workShopYellow,
    secondary: workShopBlue,
    surface: workShopGreySurface,
    background: const Color(0xffffffff),
    error: const Color(0xffb00020),
    onPrimary: workShopBlack,
    onSecondary: workShopBlack,
    onSurface: workShopBlack,
    onBackground: workShopBlack,
    onError: const Color(0xffffffff),
    brightness: Brightness.light,
  ),
);

///dark 모드
ThemeData kThemeDataDark = ThemeData(
  fontFamily: 'MaruBuri-Bold',

//기본 글자색
  textTheme: TextTheme(
    displayLarge: headline1Dark,
    displayMedium: headline2Dark,
    displaySmall: headline3Dark,
    headlineMedium: headline4Dark,
    headlineSmall: headline5Dark,
    titleLarge: headline6Dark,
    titleMedium: subtitle1Dark,
    titleSmall: subtitle2Dark,
    bodyLarge: bodyText1Dark,
    bodyMedium: bodyText2Dark,
    labelSmall: overlineDark,
    labelLarge: buttonDark,
    bodySmall: captionDark,
  ),
//배경색
  canvasColor: workShopBlack,
//앱바
  appBarTheme: AppBarTheme(
//앱바 버튼색
    foregroundColor: const Color(0xffffffff),
//앱바 폰트색
//     titleTextStyle: const TextStyle(
//         fontFamily: 'MaruBuri-Bold', fontSize: 20.0, color: Color(0xffffffff)),
//앱바 배경색
    backgroundColor: workShopBlack,
    elevation: 1.0,
  ),
  //대화창 테마
  dialogTheme: kDialogThemeDark,
  dialogBackgroundColor: workShopBlackGrey,

  //스낵바 테마
  snackBarTheme: SnackBarThemeData(
    contentTextStyle:
        TextStyle(fontFamily: 'MaruBuri-Bold', color: workShopBlack),
    actionTextColor: workShopYellow,
  ),

  colorScheme: ColorScheme.dark(
    primary: workShopYellow,
    secondary: workShopBlue,
    surface: workShopBlackGrey,
    background: workShopBlack,
    error: const Color(0xffb00020),
    onPrimary: workShopBlack,
    onSecondary: const Color(0xffffffff),
    onSurface: const Color(0xffffffff),
    onBackground: const Color(0xffffffff),
    onError: const Color(0xffffffff),
    brightness: Brightness.dark,
  ),
);
