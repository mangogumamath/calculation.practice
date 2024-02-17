import 'package:flutter/material.dart';

import '../constants.dart';

class ChooseAnswerButton extends StatelessWidget {
  ChooseAnswerButton(
      {super.key, String? buttonText,
      Widget? buttonChild,
      bool? isDisabled,
      double? fontsize,
      void Function()? onPressed}) {
    this.buttonText = buttonText ?? '';
    this.buttonChild = buttonChild ?? const SizedBox();
    this.fontsize = fontsize ?? 45.0;
    this.onPressed = onPressed ?? () {};
    this.isDisabled = isDisabled ?? false;
  }
  bool isDisabled = false;
  String buttonText = '';
  Widget buttonChild = const SizedBox();
  double fontsize = 45.0;
  void Function() onPressed = () {};

  @override
  Widget build(BuildContext context) {
    //buttonText가 ''이 아니면 항상 Text 위젯을 리턴함.
    if (buttonText != '') {
      buttonChild = Text(
        buttonText,
        style: TextStyle(
            fontSize: fontsize, color: Theme.of(context).colorScheme.onSurface),
      );
    }

    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          style: calculationButtonStyle,
          onPressed: isDisabled ? null : onPressed,
          child: buttonChild,
        ),
      ),
    );
  }
}
