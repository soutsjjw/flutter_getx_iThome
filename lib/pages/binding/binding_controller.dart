import 'package:get/get.dart';

class BindingController extends GetxController{
  //String
  final _someString = ''.obs;
  set someString(value) => this._someString.value = value;
  get someString => this._someString.value;

  //int
  final _someInt = 0.obs;
  set someInt(value) => this._someInt.value = value;
  get someInt => this._someInt.value;

  //bool
  final _someBool = false.obs;
  set someBool(value) => this._someBool.value = value;
  get someBool => this._someBool.value;

  //List
  final _someBasicList = <String>[].obs;
  set someBasicList(value) => this._someBasicList.value = value;
  get someBasicList => this._someBasicList.toList();

  @override
  void onInit() {
    super.onInit();
  }

  addBasicList() {
    _someBasicList.add("add");
  }
}
