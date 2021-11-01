import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final _imageFilePath = "".obs;

  get imageFilePath => _imageFilePath.value;

  set imageFilePath(value) => _imageFilePath.value = value;

  @override
  void onInit() {
    super.onInit();
  }

  getImage(ImageSource source) async {
    final _picker = ImagePicker();
    XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      // imageFilePath = pickedFile.path;
      // print(imageFilePath);
      imageFilePath = await cropImage(pickedFile.path);
    }
  }

  Future cropImage(String pickedFilePath) async {
    File? croppedFile = await ImageCropper.cropImage(
      sourcePath: pickedFilePath,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio16x9,
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio16x9,
            ],
      androidUiSettings: const AndroidUiSettings(
        toolbarTitle: 'Cropper',
        toolbarColor: Colors.blueAccent,
        toolbarWidgetColor: Colors.white,
        initAspectRatio: CropAspectRatioPreset.square,
        lockAspectRatio: false,
      ),
      iosUiSettings: const IOSUiSettings(title: 'Cropper'),
    );
    if (croppedFile != null) {
      return croppedFile.path;
    } else {
      return null;
    }
  }
}
