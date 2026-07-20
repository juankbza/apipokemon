import 'package:flutter/material.dart';
import 'package:pokemania/providers/poke_provider.dart';
import 'package:pokemania/routes/app_routes.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:provider/provider.dart';
import 'package:pokemania/providers/audio_provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PokeProvider(),
          lazy: false,
          
        ),
        ChangeNotifierProvider(
          create: (context) => AudioProvider(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
    );
  }
}