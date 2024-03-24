class ArticleModel {
  final String? articleImage;
  final String title;
  final String? subTitle;
  ArticleModel(
      {required this.articleImage,
      required this.title,
      required this.subTitle});
  //
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        articleImage: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
