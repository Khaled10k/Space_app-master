// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:space_app/core/constants/app_colors.dart';
import 'package:space_app/models/planet.dart';
import 'package:space_app/ui/screens/home_screen.dart';
import 'package:space_app/ui/screens/plant_details_screen.dart';
import 'package:space_app/ui/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff0E0E0E),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
            padding:EdgeInsets.all(10)
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
                PlantDetailsScreen.routeName: (context) {
                  var plant =ModalRoute.of(context)!.settings.arguments as PlanetModel;
                  return PlantDetailsScreen(planet: plant);
                }

      },
    );
  }
}
