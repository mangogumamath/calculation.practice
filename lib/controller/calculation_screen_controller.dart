import 'package:get/get.dart';

import '../constants/practicetype_constant.dart';

class CalculationScreenController extends GetxController {
  static CalculationScreenController get to =>
      Get.find<CalculationScreenController>();

  CalculationScreenController({required this.practiceType});

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
