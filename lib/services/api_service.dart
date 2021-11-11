import 'package:dio/dio.dart';
import 'package:flutter_getx_ithome/entity/news.dart';
import 'package:flutter_getx_ithome/utils/http_util.dart';

class ApiService {
  Future<News> getNews() async {
    var response = await HttpUtil().get("/everything?q=tesla&from=2021-10-11&sortBy=publishedAt&apiKey=c5356a51cdcc425f933d8ae4d3b19f31");
    if (response is DioError) {
      print(response.response!.statusCode);
      return News();
    }
    return News.fromJson(response.data);
  }
}