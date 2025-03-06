import 'package:heroicons/heroicons.dart';

class NavigationItemModel {
  final String label;
  final HeroIcons icon;
  final HeroIcons activeIcon;

  const NavigationItemModel({
    required this.label,
    required this.icon,
    required this.activeIcon,
  });
}
