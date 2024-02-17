import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Divider(
              height: 20.0,
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}
