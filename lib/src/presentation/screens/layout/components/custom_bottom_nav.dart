import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapp/src/config/theme/app_colors.dart';
import 'package:newsapp/src/presentation/providers/layout_providers.dart';

class CustomBottomNav extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const CustomBottomNav(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationItems = ref.watch(navigationItemsProvider);

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1), width: 1),
        ),
      ),
      child: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: const Color.fromRGBO(0, 0, 0, 0.1),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: navigationShell.goBranch,
        labelTextStyle: WidgetStateProperty.all(
          GoogleFonts.chakraPetch(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.textColor,
          ),
        ),
        destinations:
            navigationItems.map((item) {
              return NavigationDestination(
                icon: Icon(item.icon, size: 25),
                selectedIcon: Icon(item.activeIcon, size: 25),
                label: item.label,
              );
            }).toList(),
      ),
    );
  }
}
