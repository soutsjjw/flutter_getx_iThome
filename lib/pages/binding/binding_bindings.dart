import 'package:flutter_getx_ithome/pages/binding/binding_controller.dart';
import 'package:get/get.dart';

class BindingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingController());
  }
}