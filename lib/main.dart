import 'package:flutter/material.dart';
import 'package:flutter_getx_ithome/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      locale: const Locale('zh'),
    );
  }
}