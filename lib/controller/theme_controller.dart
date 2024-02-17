import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/storage_manager.dart';

class ThemeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkDarkMode();
  }

  checkDarkMode() async {
    var isDarkMode = await StorageManager.readData('isDarkMode') as bool?;
    if (isDarkMode == true) {
      Get.changeThemeMode(ThemeMode.dark);
    } else if (isDarkMode == false) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.system);
    }
  }
}
