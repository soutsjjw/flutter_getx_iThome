import 'package:get/get.dart';

import 'extension_controller.dart';

class ExtensionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExtensionController());
  }
}