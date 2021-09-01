import 'package:dio/dio.dart';

import '../models/article_model.dart';
import '../models/articles_model.dart';
import '../utils/strings.dart';

class NewsApi{
  Future<List<Article>> fetchArticles() async{
    try{
      Response response = await Dio()
          .get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=$API_KEY');

      if(response.statusCode == 200){
        Map<String , dynamic> data = response.data;

        ArticlesList articles = ArticlesList.fromJson(data);
        List<Article> articlesList = articles
            .articles
            .map(
              (e) => Article.fromJson(e)
            ).toList();

        return articlesList;
      } else{
        print('status code = ${response.statusCode}');
      }
    } catch(ex){
      print(ex);
    }

    return null;
  }

  Future<List<Article>> fetchArticlesByCategory (String category) async{
    try{
      Response response = await Dio()
          .get('https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$API_KEY');

      if(response.statusCode == 200){
        Map<String , dynamic> data = response.data;

        ArticlesList articles = ArticlesList.fromJson(data);
        List<Article> articlesList = articles
            .articles
            .map(
              (e) => Article.fromJson(e)
            ).toList();

        return articlesList;
      } else{
        print('status code = ${response.statusCode}');
      }
    } catch(ex){
      print(ex);
    }

    return null;
  }

}