import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../widget/calculationtype_button.dart';
import '../widget/fractionwidget.dart';
import '../widget/powerwidget.dart';
import 'main_calculation_screens/main_add_screen.dart';
import 'main_calculation_screens/main_addsub_screen.dart';
import 'main_calculation_screens/main_div_screen.dart';
import 'main_calculation_screens/main_mix_screen.dart';
import 'main_calculation_screens/main_mul_screen.dart';
import 'main_calculation_screens/main_sub_screen.dart';

class CalculationMainScreen extends StatefulWidget {
  const CalculationMainScreen({super.key});

  @override
  _CalculationMainScreenState createState() => _CalculationMainScreenState();
}

class _CalculationMainScreenState extends State<CalculationMainScreen> {
  Color highlight1 = Colors.redAccent;
  Color highlight2 = Colors.blueAccent;
  Color highlight3 = Colors.orange;
  Color highlight4 = Colors.deepPurpleAccent;

  bool isDarkMode = true;
  Color cardColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    cardColor = Theme.of(context).colorScheme.surface;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '계산 유형 선택',
          style: TextStyle(),
        ),
        actions: const [],
        // toolbarHeight: 50.0,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,

          children: [
            Container(
              padding: const EdgeInsets.all(30.0),
              child: const Text(
                '중학교 기초 계산',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                '정수와 유리수의 계산',
                style: TextStyle(fontSize: 15.0, color: workShopGreyFontColor),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainAddScreen(),
                    topColor: Colors.red,
                    topChild: const Text(
                      '(+3)+(-2)=?',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              size: 25.0,
                            ),
                            Text(
                              ' 덧셈',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainSubScreen(),
                    topColor: Colors.blue,
                    topChild: const Text(
                      '(-2)-(-3)=?',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.minus,
                              size: 25.0,
                            ),
                            Text(
                              ' 뺄셈',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainAddSubScreen(),
                    topColor: Colors.amber,
                    topChild: const Text(
                      '-5-7=?',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.plus,
                              size: 25.0,
                            ),
                            Text(
                              ' ',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            FaIcon(
                              FontAwesomeIcons.minus,
                              size: 25.0,
                            ),
                            Text(
                              ' 덧셈과 뺄셈',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainMulScreen(),
                    topColor: Colors.green,
                    topChild: const Text(
                      '(+2)×(-3)=?',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.times,
                              size: 25.0,
                            ),
                            Text(
                              ' 곱셈',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainDivScreen(),
                    topColor: Colors.deepPurpleAccent,
                    topChild: const Text(
                      '(-6)÷(-3)=?',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.divide,
                              size: 25.0,
                            ),
                            Text(
                              ' 나눗셈',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  CalculationTypeButton(
                    backgroundColor: cardColor,
                    screen: const MainMixScreen(),
                    topColor: Colors.pinkAccent,
                    topChild: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '(8-5)',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        const Text(
                          '×',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        const Text(
                          '(',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        FractionWidget(
                          -1,
                          2,
                          textStyle: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        const Text(
                          ')',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        PowerWidget(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                          power: 2,
                        ),
                      ],
                    ),
                    bottomChild: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calculate_rounded,
                              size: 25.0,
                            ),
                            Text(
                              ' 혼합 계산',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                        FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
