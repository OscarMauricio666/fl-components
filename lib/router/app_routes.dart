import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_outlined),
    MenuOption(
        route: 'List View1',
        name: 'ListViewUno',
        screen: const ListView1Screen(),
        icon: Icons.screen_search_desktop_outlined),
    MenuOption(
        route: 'ListView2',
        name: 'ListView2',
        screen: const ListView2Screen(),
        icon: Icons.screen_rotation),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.warning_amber),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'Animated Screen',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'Inputs Screen',
        icon: Icons.input_sharp,
        name: 'Inputs Screen',
        screen: const InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
