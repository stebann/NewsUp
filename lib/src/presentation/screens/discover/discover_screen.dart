import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/helpers/formatter_helper.dart';
import 'package:newsapp/src/config/theme/app_colors.dart';

import 'components/news_list_view.dart';
import 'providers/discovers_providers.dart';

class DiscoverScreen extends ConsumerWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryTabs = ref.watch(categoryTabsProvider);

    return DefaultTabController(
      length: categoryTabs.length,
      child: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelColor: AppColors.textColor,
              unselectedLabelColor: Colors.grey,
              indicatorColor: AppColors.textColor,
              labelStyle: GoogleFonts.merriweather(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(fontSize: 16),
              tabs:
                  categoryTabs.map((category) {
                    return Tab(text: FormatterHelper.formatEnumName(category));
                  }).toList(),
            ),
          ),
        ),
        body: TabBarView(
          children:
              categoryTabs.map((category) {
                return NewsListView(category: category);
              }).toList(),
        ),
      ),
    );
  }
}
