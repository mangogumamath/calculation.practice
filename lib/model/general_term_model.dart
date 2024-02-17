import 'dart:math';

import 'package:fraction/fraction.dart';

class GeneralTermModel {
  //  sign  *  (numerator)^n1 / (denominator)^n2  * x^m

  GeneralTermModel({
    bool? negativeSign,
    int? numerator,
    int? denominator,
    int? power_n1,
    int? power_n2,
    int? power_m,
    String? x,
  }) {
    this.negativeSign = negativeSign ?? false;
    this.numerator = numerator ?? 1;
    this.denominator = denominator ?? 1;
    this.power_n1 = power_n1 ?? 1;
    this.power_n2 = power_n2 ?? 1;
    this.power_m = power_m ?? 1;
    this.x = x;

    fraction = Fraction(pow(this.numerator, this.power_n1).toInt(),
        pow(this.denominator, this.power_n2).toInt());
  }

  bool negativeSign = false; // 부호

  int numerator = 1;
  int denominator = 1;
  int power_n1 = 1;
  int power_n2 = 1;
  int power_m = 1;

  String? x;

  Fraction fraction = Fraction(1);

  String generateTexString() {
    String texString = '';

    //x의 차수가 0이면 x는 없음, 이 경우 식은 sign  *  (numerator)^n1 / (denominator)^n2
    if (power_m == 0) {
      x = null;
    }

    //분모가 1이 아닌 경우, 즉 계수가 정수가 아닌 유리수인 경우
    if (denominator != 1) {
      texString += r'\frac';

      //분자 거듭제곱 처리
      if (power_n1 != 1) {
        texString += '{$numerator^{$power_n1}}';
      } else {
        texString += '{$numerator}';
      }

      //분모 거듭제곱 처리
      if (power_n2 != 1) {
        texString += '{$denominator^{$power_n2}}';
      } else {
        texString += '{$denominator}';
      }
    }

    //분모가 1인 경우, 즉 계수가 정수인 경우
    if (denominator == 1) {
      //분자가 1이 아니면 기본적인 거듭제곱 처리
      if (numerator != 1) {
        if (power_n1 != 1) {
          texString += '{$numerator^{$power_n1}}';
        } else {
          texString += '{$numerator}';
        }
      }

      //분자, 분모가 모두 1인 경우, 문자조차 없다면 숫자 1 표기
      //분자, 분모가 모두 1인 경우, 문자가 있다면 숫자는 표기하지 않음
      if (numerator == 1) {
        if (x == null) {
          texString += '{$numerator}';
        }
      }
    }

    //계수 처리 끝, 다음은 문자 처리

    //power_m이 0이면 x는 null이 되도록 해두었으므로
    //x가 null이 아니면 power_m 은 0이 아니다.
    //x의 거듭제곱 처리
    if (x != null) {
      if (power_m != 1) {
        texString += '{$x}^{$power_m}';
      }
      if (power_m == 1) {
        texString += '{$x}';
      }
    }

    //음의 부호 처리
    if (negativeSign) {
      texString = '{-$texString}';
    }

    //{-2}+{3} ok, {-2}+{-3} ok, {-2}-{-3} ok, {-2}+{+3} error, {-2}{3} error
    //-3+(-2) ok, -3+-2 error
    return texString;
  }
}
