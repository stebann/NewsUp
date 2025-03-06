import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/enums/news_category_enum.dart';
import 'package:newsapp/src/models/news_model.dart';

import '../providers/discovers_providers.dart';

class NewsListView extends ConsumerWidget {
  final NewsCategoryEnum category;

  const NewsListView({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsList = ref.watch(filteredNewsProvider(category));

    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        final news = newsList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(height: 16),
              NewsItem(news: news),
              if (index < newsList.length - 1) ...[
                const SizedBox(height: 12),
                Divider(height: 1, thickness: 1, color: Colors.grey[400]),
              ],
            ],
          ),
        );
      },
    );
  }
}

class NewsItem extends StatelessWidget {
  final NewsModel news;

  const NewsItem({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (news.imageUrl.isNotEmpty)
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(news.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

          const SizedBox(width: 12),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        news.category.name[0].toUpperCase() +
                            news.category.name.substring(1),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.more_vert, size: 20),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    news.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        news.author,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[700],
                          fontStyle: FontStyle.italic,
                        ),
                      ),

                      Text(
                        news.date,
                        style: TextStyle(fontSize: 10, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
