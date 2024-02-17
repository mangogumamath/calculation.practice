import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../ui/widget/calculation_gamescreen_local_widget/circledsign.dart';

class MulTutorialScreen extends StatefulWidget {
  const MulTutorialScreen({super.key});

  @override
  _MulTutorialScreenState createState() => _MulTutorialScreenState();
}

class _MulTutorialScreenState extends State<MulTutorialScreen>
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

    tabController = TabController(length: 3, vsync: this);
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
        child: Column(children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 30.0,
                        color: !_isDarkMode ? workShopBlack : const Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: '부호가 같은 두 수의 곱셈은 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '두 수의 절댓값의 곱',
                          style: TextStyle(
                            color: highlight3,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '에 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '양의 부호',
                          style: TextStyle(
                            color: highlight1,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '를 붙인다.',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(+2)×(+3)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '2×3',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(+2)×(+3)=+6',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(-2)×(-3)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '2×3',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(-2)×(-3)=+6',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),const SizedBox(height: 100.0,),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 30.0,
                        color: !_isDarkMode ? workShopBlack : const Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: '부호가 다른 두 수의 곱셈은 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '두 수의 절댓값의 곱',
                          style: TextStyle(
                            color: highlight3,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '에 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '음의 부호',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '를 붙인다.',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(+2)×(-3)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '2×3',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(+2)×(-3)=-6',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(-4)×(+3)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '4',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '4×3',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(-4)×(+3)=-12',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),const SizedBox(height: 100.0,),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 30.0,
                        color: !_isDarkMode ? workShopBlack : const Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: '0이 아닌 세 개 이상의 수를 곱할 때에는 먼저 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '곱의 부호',
                          style: TextStyle(
                            color: highlight4,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '를 정하고, ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '각 수들의 절댓값의 곱',
                          style: TextStyle(
                            color: highlight3,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '에 그 부호를 붙여서 계산한다.',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 30.0,
                        color: !_isDarkMode ? workShopBlack : const Color(0xffffffff),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '곱의 부호',
                          style: TextStyle(
                            color: highlight4,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '는 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '음수',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '가 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '짝수',
                          style: TextStyle(
                            color: highlight1,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: ' 개 있으면 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '양의 부호 \'+\'',
                          style: TextStyle(
                            color: highlight1,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: ', ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '음수',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: '가 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '홀수',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: ' 개 있으면 ',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                        TextSpan(
                          text: '음의부호 \'-\'',
                          style: TextStyle(
                            color: highlight2,
                            fontSize: 30.0,
                          ),
                        ),
                        const TextSpan(
                          text: ' 이다.',
                          style: TextStyle(
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(+2)×(-3)×(-4)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '+',
                        color:
                        highlight1.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '2×3×4',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '=+12',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '(-2)×(-3)×(-4)=?',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 40.0, color: highlight3),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: highlight3,
                        ),
                      ),
                      const Text(
                        ')×(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '=',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      CircledSign(
                        text: '-',
                        color:
                        highlight2.withOpacity(animationController.value),
                      ),
                      const Text(
                        '(',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                      Text(
                        '2×3×4',
                        style: TextStyle(
                          color: highlight3,
                          fontSize: 40.0,
                        ),
                      ),
                      const Text(
                        ')',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '=-12',
                        style: TextStyle(
                          fontSize: 40.0,
                        ),
                      ),
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
