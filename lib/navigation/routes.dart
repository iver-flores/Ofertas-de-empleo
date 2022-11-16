import 'package:examen/ui/home_screen.dart';
import 'package:examen/ui/view_my_work_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const home = '/';
  static const ViewWord = '/viewWork';

  static Route routes(RouteSettings settings) {

    // Helper nested function.
    MaterialPageRoute buildRoute(Widget widget) {
      return MaterialPageRoute(builder: (_) => widget, settings: settings);
    }

    switch (settings.name) {
      case home:
        return buildRoute(const HomeScreen());
      case ViewWord:
        return buildRoute(const ViewMyWorkScreen());
      default:
        throw Exception('Route does not exists');
    }
  }
}