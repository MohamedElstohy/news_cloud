class ArticlesList{
  List<dynamic> articles;

  ArticlesList({this.articles});

  ArticlesList.fromJson(Map<String , dynamic> json){
    articles = json['articles'];
  }

  Map<String , dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['articles'] = this.articles;

    return data;
  }
}