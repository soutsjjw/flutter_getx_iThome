import 'package:flutter_getx_ithome/utils/user_default.dart';
import 'package:get/get.dart';

class FirstPageController extends GetxController{

  @override
  void onInit() {
    print(UserDefault().userName);
    UserDefault().userName = "it_home_user";
    print(UserDefault().userName);

    super.onInit();
  }
}
