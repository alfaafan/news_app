import 'package:flutter/material.dart';
import 'package:news_app/domain/entities/article.dart';
import 'package:news_app/domain/entities/news.dart';
import 'package:news_app/domain/usecases/news_usecase.dart';

class NewsPage extends StatefulWidget {
  NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Article> news = [];

  @override
  void initState() {
    super.initState();
    NewsUsecase().getNews().then((value) {
      setState(() {
        news = value.articles;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(
              news[i].title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(news[i].description),
            trailing: IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                print('User liked ${news[i].title}');
                // NewsUsecase().addFavorite(news[i]);
              },
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => NewsDetailPage(article: news[i]),
              //   ),
              // );
            },
          );
        },
        separatorBuilder: (context, i) {
          return const Divider();
        },
        itemCount: news.length);
  }
}
