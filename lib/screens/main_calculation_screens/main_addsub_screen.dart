import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/modeselect_button.dart';
import '../practice_calcultion_screens/practice_screen.dart';
import '../tutorial/addsubtutorial_screen.dart';

class MainAddSubScreen extends StatefulWidget {
  const MainAddSubScreen({super.key});

  @override
  _MainAddSubScreenState createState() => _MainAddSubScreenState();
}

class _MainAddSubScreenState extends State<MainAddSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('덧셈과 뺄셈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            modeSelectbutton(
              text: '괄호와 양의 부호 생략\n튜토리얼',
              moveScreen: const AddSubTutorialScreen(),
            ),
            modeSelectbutton(
              text: '괄호와 양의 부호가 생략된\n덧셈과 뺄셈',
              moveScreen:
                  PracticeScreen(calculationType: CalculationType.addSub),
            ),
          ],
        ),
      ),
    );
  }
}
