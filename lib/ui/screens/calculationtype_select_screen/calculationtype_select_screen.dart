import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../controller/calculation_screen_controller.dart';
import '../../../utils/storage_manager.dart';
import '../../../constants/practicetype_constant.dart';
import '../../widget/cards/reusable_card.dart';
import 'calculation_screen/calculation_screen.dart';

class CalculationTypeSelectScreen extends StatefulWidget {
  const CalculationTypeSelectScreen({super.key});

  @override
  State<CalculationTypeSelectScreen> createState() =>
      _CalculationTypeSelectScreen();
}

class _CalculationTypeSelectScreen extends State<CalculationTypeSelectScreen> {
  Color cardColor = const Color(0xffffffff);
  bool _isDarkModeSwitchValue = false;
  PracticeType practiceType = PracticeType.undefined;
  PracticeTypeProvider practiceTypeProvider = PracticeTypeProvider();
  int drawerSelectedIndex = 0;
  List practiceTypeProviderList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    practiceTypeProviderList = PracticeTypeProvider().c1_1_addSub;
  }

  @override
  Widget build(BuildContext context) {
    cardColor = Theme.of(context).colorScheme.primaryContainer;
    _isDarkModeSwitchValue = Get.isDarkMode;
    final fontStyle = Theme.of(context).textTheme.headlineLarge;
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        drawer: NavigationDrawer(
          selectedIndex: drawerSelectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              if (index == 0) {
                practiceTypeProviderList = PracticeTypeProvider().c1_1_addSub;
              }
              if (index == 1) {
                practiceTypeProviderList = PracticeTypeProvider()
                    .c2_1_omissionOfSignAndValueOfExpression;
              }
              if (index == 2) {
                practiceTypeProviderList =
                    PracticeTypeProvider().c3_1_EqualSignExpressionAndSolution;
              }

              drawerSelectedIndex = index;
            });
          },
          children: const [
            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '계산 유형 선택',
                ),
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '정수와 유리수의 계산',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '문자의 사용과 식의 계산',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '일차방정식의 계산',
              ),
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 2,
          title: const Text(
            '계산 유형 선택',
          ),
          actions: [
            FaIcon(_isDarkModeSwitchValue
                ? FontAwesomeIcons.solidMoon
                : FontAwesomeIcons.solidSun),
            SizedBox(
              width: 10.0,
            ),
            Switch(
                value: _isDarkModeSwitchValue,
                onChanged: (value) {
                  _isDarkModeSwitchValue = value;
                  _isDarkModeSwitchValue
                      ? Get.changeThemeMode(ThemeMode.dark)
                      : Get.changeThemeMode(ThemeMode.light);
                  StorageManager.saveData('isDarkMode', value);
                })
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///카로슬 슬라이더
                CarouselSlider(
                  items: practiceTypeProviderList.map((e) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ReusableCard(
                          cardChild: SizedBox(
                              width: mediaWidth,
                              height: mediaHeight,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                      'assets/images/crate.png',
                                      // width: 200,
                                      // height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      e,
                                      style: fontStyle,
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              )),
                          colour: cardColor,
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    // height: 400.0,
                    aspectRatio: 16 / 7,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
