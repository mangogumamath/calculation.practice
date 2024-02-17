import 'package:flutter/material.dart';
import '../../constants.dart';

import '../../widget/fractionwidget.dart';
import '../../widget/powerwidget.dart';

class MixTutorialScreen extends StatefulWidget {
  const MixTutorialScreen({super.key});

  @override
  _MixTutorialScreenState createState() => _MixTutorialScreenState();
}

class _MixTutorialScreenState extends State<MixTutorialScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late TabController tabController;
  String fontFamily = 'ONEMobilePOP';
  Color highlight1 = Colors.redAccent;
  Color highlight2 = Colors.blueAccent;
  Color highlight3 = Colors.orange;
  Color highlight4 = Colors.deepPurpleAccent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1) * 0.3,
    );

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  final bool _isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설명'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 30.0,
                        color:
                        !_isDarkMode ? workShopBlack : const Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: '덧셈, 뺄셈, 곱셈, 나눗셈이 섞여 있는 식은 아래의 순서로 계산한다.\n',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '1. 거듭제곱을 먼저\n',
                          style: TextStyle(
                            color: highlight1,
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '2. 괄호 안을 먼저\n',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '3. 곱셈, 나눗셈을 순서대로\n',
                          style: TextStyle(
                            color: highlight3,
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '4. 덧셈, 뺄셈을 순서대로',
                          style: TextStyle(
                            color: highlight4,
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FractionWidget(5, 4),
                      Text(
                        '-',
                        style: TextStyle(
                          color: highlight4,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '(8-5)',
                        style: TextStyle(
                          color: highlight2,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '×',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '(',
                        style: TextStyle(
                          color: highlight1,
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(
                        -1,
                        2,
                        textStyle: TextStyle(fontSize: 40, color: highlight1),
                        dividerColor: highlight1,
                      ),
                      Text(
                        ')',
                        style: TextStyle(
                          color: highlight1,
                          fontSize: 40.0,
                        ),
                      ),
                      PowerWidget(
                        textStyle: TextStyle(fontSize: 30, color: highlight1),
                        power: 2,
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(5, 4),
                      Text(
                        '-',
                        style: TextStyle(
                          color: highlight4,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '(8-5)',
                        style: TextStyle(
                          color: highlight2,
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '×',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(
                        1,
                        4,
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(5, 4),
                      Text(
                        '-',
                        style: TextStyle(
                          color: highlight4,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '×',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(
                        1,
                        4,
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(5, 4),
                      Text(
                        '-',
                        style: TextStyle(
                          color: highlight4,
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(
                        3,
                        4,
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      FractionWidget(1, 2),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],),

      ),
    );
  }
}
