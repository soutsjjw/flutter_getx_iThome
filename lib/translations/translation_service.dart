import 'package:flutter_getx_ithome/translations/zh_CN.dart';
import 'package:flutter_getx_ithome/translations/zh_TW.dart';
import 'package:get/get.dart';

import 'en_US.dart';

class TranslationService extends Translations {
  static final TranslationService _singleton = TranslationService._internal();
  factory TranslationService() => _singleton;

  TranslationService._internal();

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_TW': zh_TW,
        'zh_CN': zh_CN,
      };
}
