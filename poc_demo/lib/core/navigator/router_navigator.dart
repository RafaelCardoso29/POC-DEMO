import 'package:flutter/material.dart';
import 'package:poc_demo/core/components/poc_unkown_api_error_dialog.dart';
import 'package:poc_demo/features/details/presentation/user_interface/details_screen.dart';
import 'package:poc_demo/main.dart';

part 'application_routes.dart';

class RouterNavigator {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static const String initialRoute = ApplicationRoutes.mainScreen;
  static final RouteObserver<ModalRoute> routeObserver =
      RouteObserver<ModalRoute>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case ApplicationRoutes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: settings,
        );

      case ApplicationRoutes.detailsScreen:
        return MaterialPageRoute(
          builder: (_) => DetailsScreen(),
          settings: settings,
        );

      case ApplicationRoutes.unknownApiErrorDialog:
        return MaterialPageRoute(
          builder: (_) => const PocUnknownApiErrorDialog(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MainScreen(),
        );
    }
  }
}
