import 'package:flutter/material.dart';
import 'screens/news_list_screen.dart';

void main() {
  runApp(NewsFlutterApp());
}

class NewsFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsListScreen(),
    );
  }
}
