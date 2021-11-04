import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCodeScanController extends GetxController{
  final _scanResult = Barcode("", BarcodeFormat.code93, null).obs;
  get scanResult => _scanResult.value;
  set scanResult(value) => _scanResult.value = value;

  QRViewController? qrViewController;

  void onQRViewCreated(QRViewController qrViewController) {
    this.qrViewController = qrViewController;
    qrViewController.scannedDataStream.listen((scanData) {
      scanResult = scanData;
    });
  }

  cleanScanResult() {
    scanResult = Barcode("", BarcodeFormat.code93, null);
  }
}
