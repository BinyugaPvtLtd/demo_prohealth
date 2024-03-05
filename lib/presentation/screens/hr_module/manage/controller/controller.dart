import 'package:get/get.dart';

class MyController extends GetxController {
  // Flag to determine if it's a tablet screen
  RxBool isTabletScreen = false.obs;

  // Method to check and set the screen type
  void checkScreenType(double screenWidth) {
    isTabletScreen.value = screenWidth <= 800;
  }
}
