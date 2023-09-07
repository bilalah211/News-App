import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_api/model/categories_model.dart';
import 'package:news_api/model/news_headlines_model.dart';

class NewsRepository {
  Future<NewsHeadlineModel> getNewsApi(String channelName) async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=$channelName&apiKey=2ecf42b692a3416f89ceb8b49913da53'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return NewsHeadlineModel.fromJson(data);
    }
    throw Exception('Error');
  }

  Future<CategoriesModel> getCategoryApi(String category) async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=$category&apiKey=2ecf42b692a3416f89ceb8b49913da53'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return CategoriesModel.fromJson(data);
    }
    throw Exception('Error');
  }
}
