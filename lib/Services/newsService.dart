import 'package:dio/dio.dart';
import 'package:newsapp/models/articleModel.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<Articlemodel>> getGeneral() async {
    final response = await dio.get(
        'https://gnews.io/api/v4/top-headlines?category=general%20&lang=ar&country=eg&max=10&apikey=5ff816d5e910a9bda80be039e253304c');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<Articlemodel> articleList = [];
    for (var article in articles) {
      Articlemodel ArticleModel = Articlemodel(
          image: article['image'],
          tittle: article['title'],
          subTittle: article['description']);
      articleList.add(ArticleModel);
    }
    return articleList;
  }
}
