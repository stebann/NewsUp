import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/models/navigation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:heroicons/heroicons.dart';

part 'layout_providers.g.dart';

@riverpod
List<NavigationItemModel> navigationItems(Ref ref) {
  return [
    const NavigationItemModel(
      label: 'Home',
      icon: HeroIcons.home,
      activeIcon: HeroIcons.home,
    ),
    const NavigationItemModel(
      label: 'Discover',
      icon: HeroIcons.newspaper,
      activeIcon: HeroIcons.newspaper,
    ),
    const NavigationItemModel(
      label: 'Save',
      icon: HeroIcons.bookmark,
      activeIcon: HeroIcons.bookmark,
    ),
    const NavigationItemModel(
      label: 'Profile',
      icon: HeroIcons.userCircle,
      activeIcon: HeroIcons.userCircle,
    ),
  ];
}
