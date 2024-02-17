import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/mixtutorial_screen.dart';

class MainMixScreen extends StatefulWidget {
  const MainMixScreen({super.key});

  @override
  _MainMixScreenState createState() => _MainMixScreenState();
}

class _MainMixScreenState extends State<MainMixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('혼합 계산'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '혼합 계산 튜토리얼',
              moveScreen: const MixTutorialScreen(),
            ),
            modeSelectbutton(
              text: '혼합 계산',
              moveScreen: PracticeScreen(
                calculationType: CalculationType.mix,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
