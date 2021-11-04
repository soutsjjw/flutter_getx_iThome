import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/pages/qr_code/qr_code_controller.dart';
import 'package:flutter_getx_ithome/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodePage extends GetView<QRCodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QRCodePage')),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Scan QRCode",
                style: TextStyle(fontSize: 18),
              ),
              Obx(
                () => GestureDetector(
                  onTap: () => controller.isGapless = !controller.isGapless,
                  child: SizedBox(
                    height: Get.width * 0.8,
                    width: Get.width * 0.8,
                    child: QrImage(
                      data: controller.qrCodeData,
                      version: QrVersions.auto,
                      size: Get.width * 0.7,
                      gapless: controller.isGapless,
                    ),
                  ),
                ),
              ),
              CupertinoButton(
                child: const Text("QR code Scan"),
                color: Colors.blue,
                onPressed: () => Get.toNamed(Routes.QRCODESCAN),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
