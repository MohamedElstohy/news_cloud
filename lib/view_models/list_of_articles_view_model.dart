eimport 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/services/news_service.dart';

class ArticlesListViewModel extends ChangeNotifier{
  List<Article> _articlesList = [];
  List<Article> _articlesListByCategory =[];

  List<Article> get articlesList  => _articlesList;
  List<Article> get articlesListByCategory  => _articlesListByCategory;

  Future<void> fetchArticles() async {
    final NewsApi service = NewsApi();
    _articlesList = await service.fetchArticles();  // NewsApi().fetchArticles()
    notifyListeners();
  }

  Future<void>fetchArticlesByCategory({@required String category}) async {
    final NewsApi service = NewsApi();
    _articlesList = await service.fetchArticlesByCategory(category );  // NewsApi().fetchArticlesByCategory()
    notifyListeners();
  }
}