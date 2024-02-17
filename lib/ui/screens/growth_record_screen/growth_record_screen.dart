import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GrowthRecordScreen extends StatelessWidget {
  GrowthRecordScreen({super.key});

  String nickName = '';
  int userRanking = 0;
  int userHighScoreOfAll = 0;
  List rankerList = [];

  var isLoadRankerButtonDisabled = false.obs;

  final scrollController = ScrollController();

  FaIcon topRankerIcon(int rank) {
    if (rank == 1) {
      return const FaIcon(
        FontAwesomeIcons.crown,
        size: 25.0,
        color: Color(0xFFFFE100),
      );
    } else if (rank == 2) {
      return const FaIcon(
        FontAwesomeIcons.crown,
        size: 25.0,
        color: Color(0xFFC1C1C1),
      );
    } else if (rank == 3) {
      return const FaIcon(
        FontAwesomeIcons.crown,
        size: 25.0,
        color: Color(0xFF974242),
      );
    } else {
      return const FaIcon(
        FontAwesomeIcons.chessPawn,
        size: 0.0,
        color: Colors.white,
      );
    }
  }

  Color cardColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {

    cardColor = Theme.of(context).colorScheme.surface;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          '순위',
        ),
        // toolbarHeight: 50.0,
        actions: [
          Obx(() => IconButton(
                onPressed: isLoadRankerButtonDisabled.value
                    ? null
                    : () async {
                        isLoadRankerButtonDisabled.value = true;
                        Future.delayed(const Duration(seconds: 5), () {
                          isLoadRankerButtonDisabled.value = false;
                        });
                      },
                icon: const Icon(
                  Icons.cached,
                  size: 30.0,
                ),
              )),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            // adMob.adContainer,

            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                '1위~100위',
                // style: TextStyle(fontSize: 25.0),
              ),
            ]),

          ],
        ),
      ),
    );
  }
}
