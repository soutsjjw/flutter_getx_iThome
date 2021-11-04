import 'package:flutter_getx_ithome/pages/qr_code_scan/qr_code_scan_controller.dart';
import 'package:get/get.dart';

class QRCodeScanBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRCodeScanController());
  }
}