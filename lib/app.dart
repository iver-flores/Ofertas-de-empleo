import 'package:examen/navigation/routes.dart';
import 'package:flutter/material.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Listen for authentication state changes and
    // navigate to the intro or home screens
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: Routes.routes,
    );
  }
}