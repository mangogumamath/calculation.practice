import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RightWrongWidget extends StatelessWidget {
  RightWrongWidget({super.key, required this.iconsize, required this.answerBool});
  double iconsize;
  bool answerBool;

  FaIcon rightIcon = const FaIcon(
    FontAwesomeIcons.solidCheckCircle,
    color: Colors.green,
  );
  FaIcon wrongIcon = const FaIcon(
    FontAwesomeIcons.solidTimesCircle,
    color: Colors.redAccent,
  );

  @override
  Widget build(BuildContext context) {
    rightIcon = FaIcon(
      FontAwesomeIcons.solidCheckCircle,
      color: Colors.green,
      size: iconsize,
    );
    wrongIcon = FaIcon(
      FontAwesomeIcons.solidTimesCircle,
      color: Colors.redAccent,
      size: iconsize,
    );

    if (answerBool) {
      return rightIcon;
    } else {
      return wrongIcon;
    }
  }
}
