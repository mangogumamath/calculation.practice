import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'calculationtype_select_screen/calculationtype_select_screen.dart';
import 'growth_record_screen/growth_record_screen.dart';
import 'setting_screen/setting_screen.dart';

///메인 화면
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  final pages = <Widget>[
    CalculationTypeSelectScreen(),
    GrowthRecordScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final wideScreen = ResponsiveBreakpoints.of(context).largerThan("MOBILE");
    final navigationRailFontStyle = Theme.of(context).textTheme.labelLarge;

    return SafeArea(
      child: Scaffold(
        body: wideScreen
            ?

            ///화면이 클 때 네비게이션레일과 컨텐츠
            Row(
                children: [
                  NavigationRail(
                    labelType: NavigationRailLabelType.all,
                    destinations: <NavigationRailDestination>[
                      NavigationRailDestination(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          icon: const Icon(Icons.calculate),
                          label: Text(
                            "계산",
                            style: navigationRailFontStyle,
                          )),
                      NavigationRailDestination(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          icon: const Icon(Icons.auto_graph),
                          label: Text(
                            "성장 기록",
                            style: navigationRailFontStyle,
                          )),
                      NavigationRailDestination(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          icon: const Icon(Icons.settings_sharp),
                          label: Text(
                            "설정",
                            style: navigationRailFontStyle,
                          )),
                    ],
                    selectedIndex: currentPageIndex,
                    onDestinationSelected: (int index) {
                      setState(() {
                        currentPageIndex = index;
                      });
                    },
                  ),
                  const VerticalDivider(thickness: 1, width: 1),

                  ///화면이 클 때 컨텐츠
                  Expanded(child: pages[currentPageIndex]),
                ],
              )
            :

            ///화면이 작을 때 컨텐츠(바로 위 중복 해소하기)
            pages[currentPageIndex],

        ///화면이 작을때만 네비게이션바 보이기
        bottomNavigationBar: wideScreen
            ? null
            : NavigationBar(
                onDestinationSelected: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                // indicatorColor: Colors.amber,
                selectedIndex: currentPageIndex,
                destinations: const <Widget>[
                  NavigationDestination(
                    icon: Icon(Icons.calculate),
                    label: "계산",
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.auto_graph),
                    label: "성장 기록",
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.settings_sharp),
                    label: "설정",
                  ),
                ],
              ),
      ),
    );
  }
}
