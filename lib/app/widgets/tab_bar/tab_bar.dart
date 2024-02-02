import 'package:flutter/material.dart';

class TabBarDisplay extends StatelessWidget {
  const TabBarDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home')),
            Center(child: Text('Search')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
