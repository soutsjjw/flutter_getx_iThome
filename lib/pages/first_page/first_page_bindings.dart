import 'package:flutter_getx_ithome/pages/first_page/first_page_controller.dart';
import 'package:get/get.dart';

class FirstPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstPageController());
  }
}