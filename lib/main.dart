import 'package:flutter/material.dart';
import 'package:pokemania/routes/app_routes.dart';
import 'package:pokemania/themes/app_themes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Pokeex App',

      initialRoute:  AppRoutes.initialRoute,
      
      routes: AppRoutes.routes,
      
      theme: AppThemes.mikuLightTheme,
      


    );
  }
}