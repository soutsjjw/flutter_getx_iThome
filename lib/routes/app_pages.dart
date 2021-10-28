import 'package:flutter_getx_ithome/pages/lottie/lottie_bindings.dart';
import 'package:flutter_getx_ithome/pages/lottie/lottie_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static const initPage = Routes.LOTTIE;

  static final pages = [
    GetPage(
      name: Routes.LOTTIE,
      page: () => LottiePage(),
      binding: LottieBinding(),
    ),
  ];
}