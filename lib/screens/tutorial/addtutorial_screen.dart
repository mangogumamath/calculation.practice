import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../ui/widget/calculation_gamescreen_local_widget/circledsign.dart';

class AddTutorialScreen extends StatefulWidget {
  const AddTutorialScreen({super.key});

  @override
  _AddTutorialScreenState createState() => _AddTutorialScreenState();
}

class _AddTutorialScreenState extends State<AddTutorialScreen>
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
      body: Center(
        child: SingleChildScrollView(
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
                      text: '부호가 같은 두 수의 덧셈은 ',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    TextSpan(
                      text: '두 수의 절댓값의 합',
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
                      text: '공통인 부호',
                      style: TextStyle(
                        color: highlight4,
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
                    '(+2)+(+3)=?',
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
                    color: highlight1.withOpacity(animationController.value),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 40.0, color: highlight3),
                  ),
                  const Text(
                    ')+(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  CircledSign(
                    text: '+',
                    color: highlight1.withOpacity(animationController.value),
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
                    color: highlight1.withOpacity(animationController.value),
                  ),
                  const Text(
                    '(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    '2+3',
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
                    '(+2)+(+3)=+5',
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
                    '(-2)+(-3)=?',
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
                    color: highlight2.withOpacity(animationController.value),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 40.0, color: highlight3),
                  ),
                  const Text(
                    ')+(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  CircledSign(
                    text: '-',
                    color: highlight2.withOpacity(animationController.value),
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
                    color: highlight2.withOpacity(animationController.value),
                  ),
                  const Text(
                    '(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    '2+3',
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
                    '(-2)+(-3)=-5',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100.0,),
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
                      text: '부호가 다른 두 수의 덧셈은 ',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    TextSpan(
                      text: '두 수의 절댓값의 차',
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
                      text: '절댓값이 큰 수의 부호',
                      style: TextStyle(
                        color: highlight4,
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
                    '(+2)+(-3)=?',
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
                    '2 < 3',
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
                    color: highlight1.withOpacity(0.0),
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 40.0, color: highlight3),
                  ),
                  const Text(
                    ')+(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  CircledSign(
                    text: '-',
                    color: highlight2.withOpacity(animationController.value),
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
                    color: highlight2.withOpacity(animationController.value),
                  ),
                  const Text(
                    '(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    '3-2',
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
                    '(+2)+(-3)=-1',
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
                    '(+4)+(-3)=?',
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
                    '4 > 3',
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
                    color: highlight1.withOpacity(animationController.value),
                  ),
                  Text(
                    '4',
                    style: TextStyle(fontSize: 40.0, color: highlight3),
                  ),
                  const Text(
                    ')+(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  CircledSign(
                    text: '-',
                    color: highlight2.withOpacity(0.0),
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
                    color: highlight1.withOpacity(animationController.value),
                  ),
                  const Text(
                    '(',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    '4-3',
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
                    '(+4)+(-3)=+1',
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
    );
  }
}
