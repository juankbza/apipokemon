import 'package:flutter/material.dart';
import 'package:pokemania/screens/screens.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:pokemania/widgets/widgets.dart';


class AppRoutes {

  static String initialRoute = "/intro";

  static Map<String, Widget Function(BuildContext)> routes = {

    '/info' : (BuildContext context) => InfoScreen(),
    '/home' : (BuildContext context) => HomeScreen(),
    '/guia' : (BuildContext context) => GuiaScreen(),
    '/pokedex' : (BuildContext context) => PokedexScreen(pokemonId: '1'),
    '/story' : (BuildContext context) => StoryScreen(),
    '/menupokedex' : (BuildContext context) => MenupokedexScreen(),
    '/intro' : (BuildContext context) => IntroScreen()
    


  };

  static  final customhome = <CustomCardHome>[ 

    CustomCardHome(title:'POKEDEX', color:AppThemes.lightTheme.colorScheme.secondary, route: '/menupokedex'),
    CustomCardHome(title:'INSTRUCCIONES', color:AppThemes.lightTheme.colorScheme.secondary, route: '/guia'),
    CustomCardHome(title:'DESARROLLADORES', color:AppThemes.lightTheme.colorScheme.secondary, route: '/info'),



  ];
}
