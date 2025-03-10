import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/router/route_names.dart';
import 'package:newsapp/src/presentation/providers/data_providers.dart';

import 'components/custom_save_bar.dart';

class SaveScreen extends ConsumerWidget {
  const SaveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedNews = ref.watch(savedNewsProvider);

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: CustomSaveBar(),
      body:
          savedNews.isEmpty
              ? Center(
                child: Text(
                  'No saved articles',
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(12),
                child: GridView.builder(
                  itemCount: savedNews.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.95,
                  ),
                  itemBuilder: (context, index) {
                    final news = savedNews[index];
                    return GestureDetector(
                      onTap:
                          () =>
                              context.pushNamed(RouteNames.detail, extra: news),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(158, 158, 158, 0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.asset(
                                news.imageUrl,
                                height: 110,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      news.title,
                                      style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      news.date,
                                      style: GoogleFonts.merriweather(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
    );
  }
}
