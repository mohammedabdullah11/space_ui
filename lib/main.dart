import 'package:flutter/material.dart';
import 'package:space_ui/ui/planets_details.dart';
import 'package:space_ui/ui/planets_screen.dart';
import 'package:space_ui/ui/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        StartScreen.routesName : (_) => StartScreen(),
        PlanetsScreen.routesName: (_) =>  PlanetsScreen(),
        PlanetsDetails.routesName: (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
          return PlanetsDetails(planet: args['planet']);
        },
      },
     initialRoute: StartScreen.routesName,
    );
  }
}