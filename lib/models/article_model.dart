class Article {
  String title;
  String description;
  String url;
  String urlToImage;

  Article({
    this.title,
    this.description,
    this.url,
    this.urlToImage,
  });

  Article.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    return data;
  }
}

