import 'package:http/http.dart' as http;
import 'package:news_app/app/constants/api_constant.dart';

class NewsRemoteDatasource {
  final http.Client client;

  NewsRemoteDatasource({required this.client});

  Future<String> getNews() async {
    final response = await client.get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=APIKEY'),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception();
    }
  }
}
