import 'package:get/get.dart';

import 'carousel_slide_controller.dart';

class CarouselSlideBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarouselSlideController());
  }
}