import 'package:flutter_getx_ithome/entity/news.dart';
import 'package:flutter_getx_ithome/services/api_service.dart';

abstract class NewsRepository {
  Future getNews();
}

class NewsRepositoryImpl implements NewsRepository {

  NewsRepositoryImpl();

  final apiService = ApiService();

  @override
  Future<News> getNews() async {
    return await apiService.getNews();
  }

}