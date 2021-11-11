import 'package:flutter_getx_ithome/data/repository/news_repository.dart';
import 'package:flutter_getx_ithome/entity/news.dart';
import 'package:get/get.dart';

class NewsController extends GetxController{
  NewsController({required this.repository});

  final NewsRepositoryImpl repository;

  final _isLoading = true.obs;
  get isLoading => _isLoading.value;
  set isLoading(value) => _isLoading.value = value;

  final _dataList = <Articles>[].obs;
  get dataList => _dataList.toList();

  @override
  void onInit() async {
    await fetchData();
    super.onInit();
  }

  fetchData() async {
    isLoading = true;
    final newsResult = await repository.getNews();
    _dataList.assignAll(newsResult.articles);
    isLoading = false;
  }
}
