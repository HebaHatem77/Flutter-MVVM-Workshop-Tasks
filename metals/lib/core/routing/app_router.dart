import 'package:flutter/material.dart';
import 'package:metals/core/presentation/home_screen.dart';
import 'package:metals/features/silver/presentation/screens/widgets/silver_screen.dart';
import '../../features/gold/presentation/screens/widgets/gold_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.goldScreen:
        return MaterialPageRoute(builder: (context) => GoldScreen());
        case AppRoutes.silverScreen:
        return MaterialPageRoute(builder: (context) => SilverScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
