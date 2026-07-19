import 'package:flutter/material.dart';
import 'package:pokemania/providers/poke_provider.dart';
import 'package:pokemania/routes/app_routes.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:provider/provider.dart';


void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [

        ChangeNotifierProvider(
          
          create: (context) => PokeProvider(), lazy : false,
          
          )
      ],
      
      child: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Pokedex App',

      initialRoute:  AppRoutes.initialRoute,
      
      routes: AppRoutes.routes,
      
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      


    );
  }
}