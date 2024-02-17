import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/divtutorial_screen.dart';

class MainDivScreen extends StatefulWidget {
  const MainDivScreen({super.key});

  @override
  _MainDivScreenState createState() => _MainDivScreenState();
}

class _MainDivScreenState extends State<MainDivScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나눗셈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '나눗셈 튜토리얼',
              moveScreen: const DivTutorialScreen(),
            ),
            modeSelectbutton(
              text: '나눗셈',
              moveScreen: PracticeScreen(
                calculationType: CalculationType.division,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
