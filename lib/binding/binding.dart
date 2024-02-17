import 'package:get/get.dart';

import '../controller/main_screen_controller.dart';
import '../controller/user_data_controller.dart';


class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.put(RemoteConfigController());
    Get.put(UserDataController(), permanent: true);
  }
}

class MainScreenBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainScreenController(), permanent: true);
  }
}

// class LeaderBoardScreenBinding implements Bindings {
//   @override
//   void dependencies() {
//     // TODO: implement dependencies
//     Get.put(LeaderBoardController(), permanent: true);
//   }
// }
