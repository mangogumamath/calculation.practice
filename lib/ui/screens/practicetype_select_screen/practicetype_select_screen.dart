import 'package:calculation_practice_web/controller/practice_screen_controller.dart';
import 'package:calculation_practice_web/ui/screens/practicetype_select_screen/practice_screen/practice_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../routes/routes.dart';
import '../../../utils/storage_manager.dart';
import '../../../constants/practicetype_constant.dart';
import '../../widget/cards/reusable_card.dart';

class PracticeTypeSelectScreen extends StatefulWidget {
  const PracticeTypeSelectScreen({super.key});

  @override
  State<PracticeTypeSelectScreen> createState() =>
      _CalculationTypeSelectScreen();
}

class _CalculationTypeSelectScreen extends State<PracticeTypeSelectScreen> {
  Color cardColor = const Color(0xffffffff);
  bool _isDarkModeSwitchValue = false;
  PracticeType practiceType = PracticeType.undefined;
  PracticeTypeProvider practiceTypeProvider = PracticeTypeProvider();
  int drawerSelectedIndex = 0;
  List<PracticeType> selectedPracticeTypesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedPracticeTypesList = practiceTypeProvider.c1_1_addSub;
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
                selectedPracticeTypesList = practiceTypeProvider.c1_1_addSub;
              }
              if (index == 1) {
                selectedPracticeTypesList = practiceTypeProvider.c1_2_mulDivMix;
              }
              if (index == 2) {
                selectedPracticeTypesList = practiceTypeProvider
                    .c2_1_omissionOfSignAndValueOfExpression;
              }
              if (index == 3) {
                selectedPracticeTypesList =
                    practiceTypeProvider.c2_2_termsOfPolynomial;
              }
              if (index == 4) {
                selectedPracticeTypesList =
                    practiceTypeProvider.c2_3_ExpressionMulDivNum;
              }
              if (index == 5) {
                selectedPracticeTypesList = practiceTypeProvider
                    .c2_4_similarTermsAndPolyExpressionAddSub;
              }
              if (index == 6) {
                selectedPracticeTypesList =
                    practiceTypeProvider.c3_1_EqualSignExpressionAndSolution;
              }
              if (index == 7) {
                selectedPracticeTypesList =
                    practiceTypeProvider.c3_2_solvingOfEquations;
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

            ///계산 유형 선택지
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '정수와 유리수의 덧셈 뺄셈',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '정수와 유리수의 곱셈 나눗셈',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '곱셈과 나눗셈 기호의 생략, 식의 값',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '항, 상수항, 계수, 차수',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '일차식과 수의 곱셈 나눗셈',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '동류항의 계산, 일차식의 덧셈 뺄셈',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '등식, 방정식, 항등식, 방정식의 해',
              ),
            ),
            NavigationDrawerDestination(
              icon: FaIcon(FontAwesomeIcons.pen),
              label: Text(
                '등식의 성질, 이항, 일차방정식의 풀이',
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
                  items: selectedPracticeTypesList.map((practiceType) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ReusableCard(
                          onPress: () {
                            Get.to(const PracticeScreen(), binding: BindingsBuilder(() {
                              Get.put(PracticeScreenController(practiceType: practiceType));
                            }));
                          },
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
                                      'assets/images/yellowbgpencils.jpg',
                                      // width: 200,
                                      // height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      practiceType.displayName,
                                      style: fontStyle,
                                    ),
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
