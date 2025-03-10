import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/models/news_model.dart';

import 'components/custom_detail_bar.dart';

class DetailScreen extends StatelessWidget {
  final NewsModel news;

  const DetailScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomSaveBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              news.title,
              style: GoogleFonts.merriweather(
                letterSpacing: 2,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),

            Row(
              children: [
                Text(
                  news.author,
                  style: GoogleFonts.merriweather(
                    decoration: TextDecoration.underline,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 8),
                Baseline(
                  baseline: 20,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    '°',
                    style: GoogleFonts.merriweather(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  news.date,
                  style: GoogleFonts.merriweather(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Image.asset(news.imageUrl),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                'Fuente desconocida - Pie de foto no disponible',
                style: GoogleFonts.merriweather(
                  fontSize: 10,
                  color: Colors.grey.shade600,
                ),
              ),
            ),

            const SizedBox(height: 8),

            Text(
              news.description,
              style: GoogleFonts.merriweather(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
