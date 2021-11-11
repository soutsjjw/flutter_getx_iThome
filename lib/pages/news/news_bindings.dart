import 'package:flutter_getx_ithome/data/repository/news_repository.dart';
import 'package:get/get.dart';

import 'news_controller.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsController(repository: NewsRepositoryImpl()));
  }
}