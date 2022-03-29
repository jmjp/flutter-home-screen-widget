import '../base/base_service.dart';
import 'package:flutter/material.dart';

class NavigatorService extends BaseServiceModel {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateToPage<T>(
      MaterialPageRoute<dynamic> pageRoute) async {
    log!.i('navigateToPage: ${pageRoute.settings.name}');
    return navigatorKey.currentState?.push(pageRoute);
  }

  Future<dynamic> navigateAndReplace<T>(
      MaterialPageRoute<dynamic> pageRoute) async {
    log!.i('navigateToPage: ${pageRoute.settings.name}');
    return navigatorKey.currentState?.pushReplacement(pageRoute);
  }

  Future<dynamic> navigateNamedRoute<T>(String name) async {
    log!.i('navigateToPath: $name');
    return navigatorKey.currentState!.pushNamed(name);
  }

  Future<dynamic> navigateNamedRouteAndReplace<T>(String name) async {
    log!.i('navigateToPath: $name');
    return navigatorKey.currentState!.pushReplacementNamed(name);
  }

  Future<dynamic> back() async {
    log!.i('navigate to previous page');
    return navigatorKey.currentState?.pop();
  }
}
