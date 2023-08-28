import 'package:flutter/material.dart';
import '../models/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FullNewsScreen extends StatelessWidget {
  final Article article;

  FullNewsScreen({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: WebView(
        initialUrl: article.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
