import 'package:flutter_getx_ithome/pages/binding/binding_bindings.dart';
import 'package:flutter_getx_ithome/pages/binding/binding_page.dart';
import 'package:flutter_getx_ithome/pages/cached_network_image/cached_network_image_bindings.dart';
import 'package:flutter_getx_ithome/pages/cached_network_image/cached_network_image_page.dart';
import 'package:flutter_getx_ithome/pages/carousel_slide/carousel_slide_bindings.dart';
import 'package:flutter_getx_ithome/pages/carousel_slide/carousel_slide_page.dart';
import 'package:flutter_getx_ithome/pages/extension/extension_bindings.dart';
import 'package:flutter_getx_ithome/pages/extension/extension_page.dart';
import 'package:flutter_getx_ithome/pages/first_page/first_page_bindings.dart';
import 'package:flutter_getx_ithome/pages/first_page/first_page_page.dart';
import 'package:flutter_getx_ithome/pages/image_picker/image_picker_bindings.dart';
import 'package:flutter_getx_ithome/pages/image_picker/image_picker_page.dart';
import 'package:flutter_getx_ithome/pages/lottie/lottie_bindings.dart';
import 'package:flutter_getx_ithome/pages/lottie/lottie_page.dart';
import 'package:flutter_getx_ithome/pages/qr_code/qr_code_bindings.dart';
import 'package:flutter_getx_ithome/pages/qr_code/qr_code_page.dart';
import 'package:flutter_getx_ithome/pages/qr_code_scan/qr_code_scan_bindings.dart';
import 'package:flutter_getx_ithome/pages/qr_code_scan/qr_code_scan_page.dart';
import 'package:flutter_getx_ithome/pages/toast/toast_bindings.dart';
import 'package:flutter_getx_ithome/pages/toast/toast_page.dart';
import 'package:flutter_getx_ithome/pages/wrap/wrap_bindings.dart';
import 'package:flutter_getx_ithome/pages/wrap/wrap_page.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static const initPage = Routes.FIRSTPAGE;

  static final pages = [
    GetPage(
      name: Routes.FIRSTPAGE,
      page: () => FirstPagePage(),
      binding: FirstPageBinding(),
    ),
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
    GetPage(
      name: Routes.IMAGEPICKER,
      page: () => ImagePickerPage(),
      binding: ImagePickerBinding(),
    ),
    GetPage(
      name: Routes.TOAST,
      page: () => ToastPage(),
      binding: ToastBinding(),
    ),
    GetPage(
      name: Routes.CACHEDNETWORKIMAGE,
      page: () => CachedNetworkImagePage(),
      binding: CachedNetworkImageBinding(),
    ),
    GetPage(
      name: Routes.QRCODE,
      page: () => QRCodePage(),
      binding: QRCodeBinding(),
    ),
    GetPage(
      name: Routes.QRCODESCAN,
      page: () => QRCodeScanPage(),
      binding: QRCodeScanBinding(),
    ),
    GetPage(
      name: Routes.WRAP,
      page: () => WrapPage(),
      binding: WrapBinding(),
    ),
    GetPage(
      name: Routes.BINDING,
      page: () => BindingPage(),
      binding: BindingBinding(),
    ),
    GetPage(
      name: Routes.EXTENSION,
      page: () => ExtensionPage(),
      binding: ExtensionBinding(),
    ),
  ];
}