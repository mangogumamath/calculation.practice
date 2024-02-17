import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../utils/storage_manager.dart';
import '';
import 'user_data_controller.dart';

class MainScreenController extends GetxController {
  static MainScreenController get to => Get.find<MainScreenController>();

  @override
  void onReady() {
    // 1프레임 이후 (ui를 그리는 작업은 여기에)
    // nickNameCheck(Get.context!);
    super.onReady();
  }

  //닉네임이 없으면 설정하도록 한 번만 대화창 띄우기
}
