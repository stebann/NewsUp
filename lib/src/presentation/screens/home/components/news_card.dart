import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/models/news_model.dart';

class NewsCard extends StatelessWidget {
  final VoidCallback onTap;
  final NewsModel news;

  const NewsCard({super.key, required this.news, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
