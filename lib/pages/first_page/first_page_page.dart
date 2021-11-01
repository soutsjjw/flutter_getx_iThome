import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_page_controller.dart';

class FirstPagePage extends GetView<FirstPageController> {
  final controller = Get.put(FirstPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage Page')),
      body: Container(
        child: Text('FirstPage Page'),
      ),
    );
  }
}
