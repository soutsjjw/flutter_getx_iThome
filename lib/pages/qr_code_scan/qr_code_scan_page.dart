import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/pages/qr_code_scan/qr_code_scan_controller.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScanPage extends GetView<QRCodeScanController> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.scanResult.code == ""
          ? _buildQrView(context)
          : _buildScanResultView(context)),
    );
  }

  //掃描到的結果Widget
  Widget _buildScanResultView(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(controller.scanResult.code),
          ),
          CupertinoButton(
            onPressed: () {
              controller.cleanScanResult();
              Get.back();
            },
            child: const Text(
              "確認並返回",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  //開啟相機掃描中的Widget
  Widget _buildQrView(BuildContext context) {
    var scanArea = Get.width;
    return Stack(
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: controller.onQRViewCreated,
          overlay: QrScannerOverlayShape(
              borderColor: Colors.red,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: scanArea),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CupertinoButton(
                color: Colors.blue,
                onPressed: () => Get.back(),
                child: const Text('返回')),
          ),
        ),
      ],
    );
  }
}
