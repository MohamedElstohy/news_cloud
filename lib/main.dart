import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Views/home_view.dart';
import 'view_models/list_of_articles_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ArticlesListViewModel>(
        create: (context) => ArticlesListViewModel(),
        child: HomeView(),
      ),
    );
  }
}
