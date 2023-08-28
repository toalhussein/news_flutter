import 'package:flutter/material.dart';
import '../models/article.dart';

class NewsContainer extends StatelessWidget {
  final Article article;

  NewsContainer({required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            article.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(article.description),
        ],
      ),
    );
  }
}
