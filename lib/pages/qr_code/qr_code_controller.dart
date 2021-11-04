import 'package:get/get.dart';

class QRCodeController extends GetxController{
  final _qrCodeData = ''.obs;
  get qrCodeData => _qrCodeData.value;
  set qrCodeData(value) => _qrCodeData.value = value;

  final _isGapless = false.obs;
  get isGapless => _isGapless.value;
  set isGapless(value) => _isGapless.value = value;

  @override
  void onInit() {
    qrCodeData = 'https://ithelp.ithome.com.tw/2021ironman';
    super.onInit();
  }
}
