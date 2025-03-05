import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newsapp/src/models/navigation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'layout_providers.g.dart';

@riverpod
List<NavigationItemModel> navigationItems(Ref ref) {
  return [
    const NavigationItemModel(
      label: 'Home',
      icon: Icons.home_outlined,
      activeIcon: Icons.home_filled,
    ),
    const NavigationItemModel(
      label: 'Discover',
      icon: Icons.explore_outlined,
      activeIcon: Icons.explore,
    ),
    const NavigationItemModel(
      label: 'Save',
      icon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
    ),
    const NavigationItemModel(
      label: 'Profile',
      icon: Icons.favorite_outline,
      activeIcon: Icons.favorite,
    ),
  ];
}
