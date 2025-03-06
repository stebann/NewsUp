import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/enums/news_category_enum.dart';
import 'package:newsapp/src/models/news_model.dart';
import 'package:newsapp/src/presentation/providers/data_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'discovers_providers.g.dart';

@riverpod
List<NewsCategoryEnum> categoryTabs(Ref ref) {
  return NewsCategoryEnum.values;
}

@riverpod
List<NewsModel> filteredNews(Ref ref, NewsCategoryEnum category) {
  final allNews =
      ref.watch(treandingNewsProvider) + ref.watch(latestNewsListProvider);

  if (category == NewsCategoryEnum.all) {
    return allNews;
  } else {
    return allNews.where((news) => news.category == category).toList();
  }
}
