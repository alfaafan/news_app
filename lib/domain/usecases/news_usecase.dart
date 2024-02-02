import 'package:news_app/data/repositories/news_repository.dart';
import 'package:news_app/domain/entities/news.dart';

class NewsUsecase {
  NewsUsecase();

  final NewsRepository _newsRepository = NewsRepository();

  Future<News> getNews() async {
    return await _newsRepository.getNews();
  }
}
