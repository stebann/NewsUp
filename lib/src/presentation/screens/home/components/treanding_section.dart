import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/models/news_model.dart';

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

              return NewsWidget(news: noticia);
            },
          ),
        ),
      ],
    );
  }
}

class NewsWidget extends StatelessWidget {
  final NewsModel news;

  const NewsWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,

      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color.fromARGB(25, 0, 0, 0)),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 330,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                news.imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    Text(
                      news.author,
                      style: GoogleFonts.merriweather(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    SizedBox(width: 8),

                    Baseline(
                      baseline: 20,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        '°',
                        style: GoogleFonts.merriweather(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),

                    SizedBox(width: 8),

                    Text(
                      news.date,
                      style: GoogleFonts.merriweather(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(4),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Read Now',
                          style: GoogleFonts.merriweather(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
