import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  //
  Future<List<ArticleModel>> getNews({required String categoryName}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=5a5c25eda354488e9ce3b85e6960fa34&country=us&category=$categoryName');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        //To add articles in the list as objects
        ArticleModel articleObj = ArticleModel.fromJson(article);
        //
        articleList.add(articleObj);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
