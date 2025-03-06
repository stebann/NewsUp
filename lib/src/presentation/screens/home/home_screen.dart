import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/presentation/providers/data_providers.dart';

import 'components/custom_home_bar.dart';
import 'components/custom_text_field.dart';
import 'components/last_news_section.dart';
import 'components/treanding_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final treandingNes = ref.watch(treandingNewsProvider);
    final latestNews = ref.watch(latestNewsListProvider);

    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: CustomHomeBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: CustomTextField(),
            ),

            SizedBox(height: 16),

            TreandingSection(news: treandingNes),

            SizedBox(height: 16),

            LastNewsSection(news: latestNews),
          ],
        ),
      ),
    );
  }
}
