import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class NewsApi {
  final String apiKey = '36479e94e45240c4b564463b32061aff';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';

  Future<List<Article>> getTopHeadlines() async {
    final response = await http.get('$baseUrl?apiKey=$apiKey' as Uri);

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return (jsonData['articles'] as List)
          .map((articleJson) => Article.fromJson(articleJson))
          .toList();
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
