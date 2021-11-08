import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/entity/person.dart';
import 'package:flutter_getx_ithome/routes/app_pages.dart';
import 'package:flutter_getx_ithome/translations/translation_service.dart';
import 'package:flutter_getx_ithome/utils/user_default.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserDefault().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initPage,
      getPages: AppPages.pages,
      enableLog: true,
      translations: TranslationService(),
      locale: const Locale('zh', 'TW'),
    );
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