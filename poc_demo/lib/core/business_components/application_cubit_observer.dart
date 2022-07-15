import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_demo/core/business_components/application_state.dart';
import 'package:poc_demo/core/navigator/router_navigator.dart';
import 'package:poc_demo/main.dart';

class ApplicationCubitObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    developer.log('onChange -- bloc: ${bloc.runtimeType}, change: $change');

    if (change.nextState is ApplicationUnauthorizedError &&
        _currentRoute() != ApplicationRoutes.mainScreen) {
      RouterNavigator.navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => const MainScreen(),
        ),
        (route) => false,
      );
    }
  }

  String _currentRoute() {
    late String currentPath;
    RouterNavigator.navigatorKey.currentState?.popUntil((route) {
      currentPath = route.settings.name ?? '';
      return true;
    });
    return currentPath;
  }
}
