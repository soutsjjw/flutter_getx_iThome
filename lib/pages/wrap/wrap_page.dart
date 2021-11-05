import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/pages/wrap/wrap_controller.dart';
import 'package:get/get.dart';

class WrapPage extends GetView<WrapController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap Page')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: [
              Obx(() {
                return Wrap(
                  spacing: 5,
                  runSpacing: 0,
                  children: List.generate(controller.chipList.length, (index) {
                    final title = controller.chipList[index];
                    return Chip(
                      label: Text(title),
                      onDeleted: () => controller.removeChipData(index),
                    );
                  }),
                );
              }),
              Positioned.fill(
                bottom: 8,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: Get.width * 0.8 * 0.14,
                    child: FloatingActionButton(
                      onPressed: () {
                        controller.addChipData();
                      },
                      child: Text("+", style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
