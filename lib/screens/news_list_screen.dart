// lib/screens/news_list_screen.dart
import 'package:flutter/material.dart';
import '../api/news_api.dart';
import '../models/article.dart';
import '../widgets/news_container.dart';
import 'full_news_screen.dart';

class NewsListScreen extends StatefulWidget {
  @override
  _NewsListScreenState createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  final NewsApi _newsApi = NewsApi();
  late List<Article> _articles;

  @override
  void initState() {
    super.initState();
    _loadArticles();
  }

  Future<void> _loadArticles() async {
    final articles = await _newsApi.getTopHeadlines();
    setState(() {
      _articles = articles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Headlines'),
      ),
      body: ListView.builder(
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullNewsScreen(article: _articles[index]),
                ),
              );
            },
            child: NewsContainer(article: _articles[index]),
          );
        },
      ),
    );
  }
}
