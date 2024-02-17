import 'package:calculation_practice_web/screens/calculation_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'constants.dart';

///컨트롤러 달기
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ///테마 설정
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '무한의 계산',
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints(
        breakpoints: const [
          Breakpoint(start: 0, end: 600, name: MOBILE),
          Breakpoint(start: 601, end: double.infinity, name: DESKTOP),
        ],
        child: child!,
      ),
      theme: ThemeData(
        fontFamily: 'ONEMobilePOP',
        //대화창 테마
        dialogTheme: const DialogTheme(
          titleTextStyle: TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'ONEMobilePOP',
          ),
          contentTextStyle: TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'ONEMobilePOP',
          ),
        ),
        //기본 글자색
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xffffffff)),
        ),
        //배경색
        canvasColor: workShopBlack,
        //앱바
        appBarTheme: AppBarTheme(
          //앱바 버튼색
          foregroundColor: const Color(0xffffffff),
          //앱바 폰트색
          titleTextStyle: const TextStyle(
              fontFamily: 'ONEMobilePOP',
              fontSize: 20.0,
              color: Color(0xffffffff)),
          //앱바 배경색
          backgroundColor: workShopBlack,
          elevation: 1.0,
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
      ),
      home: const CalculationMainScreen(),
    );
  }
}
