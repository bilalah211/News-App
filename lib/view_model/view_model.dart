import 'package:news_api/model/categories_model.dart';
import 'package:news_api/model/news_headlines_model.dart';
import 'package:news_api/repository/news_repository.dart';

class NewsViewModel {
  final _myRepo = NewsRepository();
  Future<NewsHeadlineModel> getNewsApi(String channelName) async {
    final response = _myRepo.getNewsApi(channelName);
    return response;
  }

  Future<CategoriesModel> getCategoryApi(String category) async {
    final response = _myRepo.getCategoryApi(category);
    return response;
  }
}
