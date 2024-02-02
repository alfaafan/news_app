// import 'package:hive/hive.dart';
// import 'package:news_app/data/models/article_hive_model.dart';
// import 'package:news_app/domain/entities/article.dart';
// import 'package:news_app/domain/entities/source.dart';

// class NewsLocalDatasource {
//   static const boxName = 'newsBox';

//   // NewsLocalDatasource({@required this.sharedPreferences});

//   Future<void> init() async {
//     await Hive.openBox<ArticleHive>(boxName);
//   }

//   Future<void> save(ArticleHive article) async {
//     final box = await Hive.openBox<ArticleHive>(boxName);
//     await box.add(article);
//   }

//   Future<List<Article>> getNews() async {
//     final box = await Hive.openBox<ArticleHive>(boxName);
//     return box.values.map((article) => Article(source: Source(id: article, name: name), author: author, title: title, description: description, url: url, urlToImage: urlToImage, publishedAt: publishedAt, content: content))
//   }
// }
