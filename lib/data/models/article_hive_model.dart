import 'package:hive/hive.dart';

part 'article_hive_model.g.dart';

@HiveType(typeId: 0)
class ArticleHive extends HiveObject {
  @HiveField(0)
  late String? author;
  @HiveField(1)
  late String title;
  @HiveField(2)
  late String description;
  @HiveField(3)
  late String url;
  @HiveField(4)
  late String? urlToImage;
  @HiveField(5)
  late DateTime publishedAt;
  @HiveField(6)
  late String content;
}
