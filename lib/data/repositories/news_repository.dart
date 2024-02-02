import 'dart:convert';

import 'package:news_app/data/datasources/remote/news_remote_datasource.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/domain/entities/news.dart';

class NewsRepository {
  final NewsRemoteDatasource remoteDatasource =
      NewsRemoteDatasource(client: http.Client());

  Future<News> getNews() async {
    var response = jsonDecode(await remoteDatasource.getNews());
    var news = News.fromJson(response);
    return news;
  }
}
