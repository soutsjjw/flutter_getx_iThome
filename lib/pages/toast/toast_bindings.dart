import 'package:flutter_getx_ithome/pages/toast/toast_controller.dart';
import 'package:get/get.dart';

class ToastBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ToastController());
  }
}