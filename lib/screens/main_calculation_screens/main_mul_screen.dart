import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/multutorial_screen.dart';

class MainMulScreen extends StatefulWidget {
  const MainMulScreen({super.key});

  @override
  _MainMulScreenState createState() => _MainMulScreenState();
}

class _MainMulScreenState extends State<MainMulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('곱셈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '곱셈 튜토리얼',
              moveScreen: const MulTutorialScreen(),
            ),
            modeSelectbutton(
              text: '두 수의 곱셈',
              moveScreen: PracticeScreen(
                  calculationType: CalculationType.multiplicationTwo),
            ),
            modeSelectbutton(
              text: '세 개 이상의 수의 곱셈',
              moveScreen: PracticeScreen(
                  calculationType: CalculationType.multiplicationMany),
            ),
          ],
        ),
      ),
    );
  }
}
