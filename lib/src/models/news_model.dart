import 'package:newsapp/src/enums/news_category_enum.dart';

class NewsModel {
  final String title;
  final String description;
  final String author;
  final String date;
  final String imageUrl;
  final NewsCategoryEnum category;

  NewsModel({
    required this.title,
    required this.description,
    required this.author,
    required this.date,
    required this.imageUrl,
    required this.category,
  });
}
