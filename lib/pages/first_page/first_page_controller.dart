import 'package:flutter_getx_ithome/entity/person.dart';
import 'package:flutter_getx_ithome/routes/app_pages.dart';
import 'package:flutter_getx_ithome/utils/user_default.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

class FirstPageController extends GetxController{

  final _dataList = [
    "CarouselSlidePage",
    "LottiePage",
    "ImagePickerPage",
    "four",
    "five",
    "ToastPage",
    "CachedNetworkImagePage",
    "QRCodePage",
    "WrapPage",
    Routes.BINDING.replaceAll("/", ""),
    "ExtensionPage",
    Routes.NEWS.replaceAll("/", ""),
  ].obs;
  get dataList => _dataList.toList();

  @override
  void onInit() {
    print(UserDefault().userName);
    UserDefault().userName = "it_home_user";
    print(UserDefault().userName);

    super.onInit();
  }

  compateIfEqual() {
    final person = Person()
      ..name = "someone"
      ..id = "1"
      ..age = 5;

    final personTwo = Person()
      ..name = "sometwo"
      ..id = "2"
      ..age = 10;

    final isEqual =
    DeepCollectionEquality.unordered().equals(person, personTwo);
    print(isEqual);
  }
}
