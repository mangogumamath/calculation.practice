import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'routes/routes.dart';
import 'ui/screens/main_screen.dart';

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
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        brightness: Brightness.light,
        fontFamily: 'ONEMobilePOP',
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        brightness: Brightness.dark,
        fontFamily: 'ONEMobilePOP',
      ),
      themeMode: ThemeMode.system,
      initialRoute: Routes.mainScreen,
      getPages: AppPages.routes,

      // home: MainScreen(),
    );
  }
}
