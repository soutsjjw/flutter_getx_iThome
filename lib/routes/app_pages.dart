import 'package:flutter_getx_ithome/pages/carousel_slide/carousel_slide_bindings.dart';
import 'package:flutter_getx_ithome/pages/carousel_slide/carousel_slide_page.dart';
import 'package:flutter_getx_ithome/pages/lottie/lottie_bindings.dart';
import 'package:flutter_getx_ithome/pages/lottie/lottie_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static const initPage = Routes.CAROUSELSLIDE;

  static final pages = [
    GetPage(
      name: Routes.LOTTIE,
      page: () => LottiePage(),
      binding: LottieBinding(),
    ),
    GetPage(
      name: Routes.CAROUSELSLIDE,
      page: () => CarouselSlidePage(),
      binding: CarouselSlideBinding(),
    ),
  ];
}