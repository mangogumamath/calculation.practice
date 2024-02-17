import 'package:flutter/material.dart';
import 'package:fraction/fraction.dart';

import '../constants.dart';

class FractionReducedWidget extends StatelessWidget {
  FractionReducedWidget(this.numerator, this.dinominator,
      {super.key, TextStyle? textStyle, Color? dividerColor, double? dividerWidth}) {
    fraction_reduced = Fraction(numerator, dinominator).reduce();
    sign = fraction_reduced.isNegative ? '-' : '';
    whole = fraction_reduced.isWhole;
    this.textStyle = textStyle ?? const TextStyle(fontSize: 40.0);
    this.dividerColor = dividerColor ?? Colors.white;
    this.dividerWidth = dividerWidth ?? 40.0;
  }
  int numerator;
  int dinominator;
  bool whole = false;
  Fraction fraction_reduced = Fraction(1);
  String sign = '';
  TextStyle textStyle = const TextStyle(fontSize: 40.0);
  Color dividerColor = Colors.white;
  double dividerWidth = 40.0;
  final bool _isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    if (dividerColor == Colors.white) {
      dividerColor = !_isDarkMode ? workShopBlack : const Color(0xffffffff);
    }
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: whole
              ? [
                  Text(
                    sign,
                    style: textStyle,
                  ),
                  Text(
                    fraction_reduced.numerator.abs().toString(),
                    style: textStyle,
                  ),
                ]
              : [
                  Text(
                    sign,
                    style: textStyle,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        fraction_reduced.numerator.abs().toString(),
                        style: textStyle,
                      ),
                      Container(
                        color: dividerColor,
                        width: dividerWidth,
                        height: dividerWidth * 0.15,
                      ),
                      Text(
                        fraction_reduced.denominator.abs().toString(),
                        style: textStyle,
                      ),
                    ],
                  )
                ],
        ),
      ),
      // width: 30.0,
      // height: 40.0,
    );
  }
}
