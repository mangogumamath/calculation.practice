import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:get/get.dart';

import '../../../../controller/practice_screen_controller.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var questionWidget = Math.tex(
      PracticeScreenController.to.practiceType.code,
      textStyle: const TextStyle(
        fontSize: 45,
      ),
    ); //문제 텍스트 위젯 입력
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          elevation: 2,
          title: const Text(
            '계산하기',
          ),
          actions: const [],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Row(
                    children: [
                      Text('문제 개수 '),
                      Text('3/10'),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 100.0,
              ), //이 자리에 애니메이션?
              SingleChildScrollView(child: questionWidget),
              SizedBox(
                height: 100.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("a")),
                      ElevatedButton(onPressed: () {}, child: Text("a")),
                    ],
                  ), //버튼 A, B
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("a")),
                      ElevatedButton(onPressed: () {}, child: Text("a")),
                    ],
                  ), //버튼 C, D
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
