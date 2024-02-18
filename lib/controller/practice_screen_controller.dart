import 'package:get/get.dart';

import '../constants/practicetype_constant.dart';

class PracticeScreenController extends GetxController {
  static PracticeScreenController get to =>
      Get.find<PracticeScreenController>();

  PracticeScreenController({required this.practiceType});

  PracticeType practiceType;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
