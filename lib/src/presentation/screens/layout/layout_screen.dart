import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'components/custom_app_bar.dart';
import 'components/custom_bottom_nav.dart';
import 'components/custom_drawer.dart';

class LayoutScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const LayoutScreen({required this.navigationShell, Key? key})
    : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: navigationShell,
      bottomNavigationBar: CustomBottomNav(navigationShell),
    );
  }
}
