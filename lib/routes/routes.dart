import 'package:get/get.dart';
import '../binding/binding.dart';
import '../ui/screens/growth_record_screen/growth_record_screen.dart';
import '../ui/screens/main_screen.dart';
import '../ui/screens/practicetype_select_screen/practice_screen/practice_screen.dart';

abstract class Routes {
  static const splashScreen = '/SplashScreen';
  static const mainScreen = '/';
  static const calculationMainScreen = '/CalculationMainScreen';
  static const growthRecordScreen = '/GrowthRecordScreen';
  static const myInfoScreen = '/MyInfoScreen';
  static const loginScreen = '/LoginScreen';
  static const settingScreen = '/SettingScreen';
  static const userDeleteScreen = '/UserDeleteScreen';

  static const mainAddScreen = '/MainAddScreen';
  static const mainAddSubScreen = '/MainAddSubScreen';
  static const mainDivScreen = '/MainDivScreen';
  static const mainMixScreen = '/MainMixScreen';
  static const mainMulScreen = '/MainMulScreen';
  static const mainSubScreen = '/MainSubScreen';

  static const practiceScreen = '/PracticeScreen';

  static const addSubTutorialScreen = '/AddSubTutorialScreen';
  static const addTutorialScreen = '/AddTutorialScreen';
  static const divTutorialScreen = '/DivTutorialScreen';
  static const mixTutorialScreen = '/MixTutorialScreen';
  static const mulTutorialScreen = '/MulTutorialScreen';
  static const subTutorialScreen = '/SubTutorialScreen';

  static const agreeDialog = '/AgreeDialog';

  static const testPageScreen = '/TestPageScreen';
}

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.mainScreen,
      page: () => const MainScreen(),
      binding: MainScreenBinding(),
    ),
    GetPage(
      name: Routes.growthRecordScreen,
      page: () => GrowthRecordScreen(),
      // binding: LeaderBoardScreenBinding(),
    ),
    GetPage(
      name: Routes.practiceScreen,
      page: () => PracticeScreen(),
      // binding: LeaderBoardScreenBinding(),
    ),

  ];
}
