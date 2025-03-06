import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:newsapp/src/config/theme/app_colors.dart';
import 'package:newsapp/src/presentation/screens/layout/providers/layout_providers.dart';

class CustomBottomNav extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const CustomBottomNav(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationItems = ref.watch(navigationItemsProvider);

    return Container(
      height: 70,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1), width: 1),
        ),
      ),
      child: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        indicatorColor: Colors.transparent,
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        backgroundColor: Colors.white,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: navigationShell.goBranch,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
          Set<WidgetState> states,
        ) {
          final isSelected = states.contains(WidgetState.selected);
          return GoogleFonts.inter(
            fontSize: 11,
            fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
            color:
                isSelected ? AppColors.textColor : AppColors.textSecundaryColor,
          );
        }),

        destinations:
            navigationItems.map((item) {
              return NavigationDestination(
                icon: HeroIcon(
                  item.icon,
                  style: HeroIconStyle.outline,
                  size: 24,
                ),
                selectedIcon: HeroIcon(
                  item.activeIcon,
                  style: HeroIconStyle.solid,
                  size: 26,
                ),
                label: item.label,
              );
            }).toList(),
      ),
    );
  }
}
