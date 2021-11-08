import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExtensionController extends GetxController{

  updateTransition(Locale local) {
    Get.updateLocale(local);
  }
}
