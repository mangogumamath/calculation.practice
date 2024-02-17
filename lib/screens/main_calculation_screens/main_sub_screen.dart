import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/subtutorial_screen.dart';

class MainSubScreen extends StatefulWidget {
  const MainSubScreen({super.key});

  @override
  _MainSubScreenState createState() => _MainSubScreenState();
}

class _MainSubScreenState extends State<MainSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('뺄셈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '뺄셈 튜토리얼',
              moveScreen: const SubTutorialScreen(),
            ),
            modeSelectbutton(
              text: '뺄셈',
              moveScreen: PracticeScreen(
                calculationType: CalculationType.subtraction,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
