import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/components/carousel_slide.dart';
import 'package:get/get.dart';

import 'carousel_slide_controller.dart';

class CarouselSlidePage extends GetView<CarouselSlideController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliderListPage')),
      body: SafeArea(
        child: Center(
          child: CarouselSlide(
            dataList: controller.dataList,
            didSelected: (int index) {
              print("didTapped $index");
            },
          ),
        ),
      ),
    );
  }
}
