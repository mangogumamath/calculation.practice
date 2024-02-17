import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/addtutorial_screen.dart';

class MainAddScreen extends StatefulWidget {
  const MainAddScreen({super.key});

  @override
  _MainAddScreenState createState() => _MainAddScreenState();
}

class _MainAddScreenState extends State<MainAddScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('덧셈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '덧셈 튜토리얼',
              moveScreen: const AddTutorialScreen(),
            ),
            modeSelectbutton(
              text: '부호가 같은 두 수의 덧셈',
              moveScreen: PracticeScreen(
                calculationType: CalculationType.sameAdd,
              ),
            ),
            modeSelectbutton(
              text: '부호가 다른 두 수의 덧셈',
              moveScreen: PracticeScreen(
                calculationType: CalculationType.diffAdd,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
