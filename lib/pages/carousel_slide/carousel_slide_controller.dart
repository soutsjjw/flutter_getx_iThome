import 'package:get/get.dart';

class CarouselSlideController extends GetxController{
  final _dataLit = [].obs;
  get dataList => _dataLit;

  @override
  void onInit() {
    _dataLit.assignAll(Iterable<int>.generate(10).toList());
    super.onInit();
  }
}
