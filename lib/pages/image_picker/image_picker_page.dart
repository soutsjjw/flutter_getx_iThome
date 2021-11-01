import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'image_picker_controller.dart';

class ImagePickerPage extends GetView<ImagePickerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePickPage')),
      body: SafeArea(
        child: Column(
          children: [
            _buildImageWidget(),
            CupertinoButton(
              child: const Text("選擇照片"),
              onPressed: () => controller.getImage(ImageSource.gallery),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWidget() {
    return Center(
      child: Obx(() {
        return Container(
          color: Colors.grey[200],
          width: Get.width,
          height: Get.width,
          child: (controller.imageFilePath.isEmpty)
              ? Icon(Icons.photo_library, size: 50)
              : Image.file(File(controller.imageFilePath)),
        );
      }),
    );
  }
}
