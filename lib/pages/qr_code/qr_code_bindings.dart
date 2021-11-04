import 'package:flutter_getx_ithome/pages/qr_code/qr_code_controller.dart';
import 'package:get/get.dart';

class QRCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRCodeController());
  }
}