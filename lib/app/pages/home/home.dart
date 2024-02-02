import 'package:flutter/material.dart';
import 'package:news_app/app/pages/favorite_page/favorite_page.dart';
import 'package:news_app/app/pages/news_page/news_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.newspaper)),
                Tab(icon: Icon(Icons.favorite)),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            NewsPage(),
            FavoritePage(),
          ],
        ),
      ),
    );
  }
}
