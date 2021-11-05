import 'package:flutter_getx_ithome/pages/wrap/wrap_controller.dart';
import 'package:get/get.dart';

class WrapBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WrapController());
  }
}