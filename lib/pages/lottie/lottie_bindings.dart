import 'package:get/get.dart';

import 'lottie_controller.dart';

class LottieBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LottieController());
  }
}