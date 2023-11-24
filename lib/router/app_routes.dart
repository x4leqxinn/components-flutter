import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'List view 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'listview2',
        name: 'List view 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'avatar',
        name: 'Circle avatar',
        screen: const AvatarScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'animated',
        name: 'Circle Animated',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Rutas dinamicas
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
