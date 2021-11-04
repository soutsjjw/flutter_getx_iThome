import 'package:flutter_getx_ithome/pages/cached_network_image/cached_network_image_controller.dart';
import 'package:get/get.dart';

class CachedNetworkImageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CachedNetworkImageController());
  }
}