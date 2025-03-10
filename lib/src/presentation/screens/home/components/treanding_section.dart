import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/router/route_names.dart';
import 'package:newsapp/src/models/news_model.dart';

import 'news_card.dart';

class TreandingSection extends StatelessWidget {
  final List<NewsModel> news;

  const TreandingSection({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Treanding Now',
                style: GoogleFonts.merriweather(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_back, size: 28),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward, size: 28),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        SizedBox(
          height: 320,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: news.length,
            itemBuilder: (context, index) {
              final noticia = news[index];

              return NewsCard(
                news: noticia,
                onTap:
                    () => context.pushNamed(RouteNames.detail, extra: noticia),
              );
            },
          ),
        ),
      ],
    );
  }
}
