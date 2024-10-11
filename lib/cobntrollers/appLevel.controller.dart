import 'package:get/get.dart';

class AppLevelController extends GetxController {
  var isDarkMode = false.obs;
  var isSignIn = true.obs;
  var isLoading = false.obs;

  void toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
  }

  void toggleSignIn() {
    isSignIn.value = !isSignIn.value;
  }
}
