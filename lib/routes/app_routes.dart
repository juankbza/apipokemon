import 'package:flutter/material.dart';
import 'package:pokemania/screens/screens.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:pokemania/widgets/widgets.dart';


class AppRoutes {

  static String initialRoute = "/home";

  static Map<String, Widget Function(BuildContext)> routes = {

    '/info' : (BuildContext context) => InfoScreen(),
    '/home' : (BuildContext context) => HomeScreen(),
    '/guia' : (BuildContext context) => GuiaScreen(),
    '/pokedex' : (BuildContext context) => PokedexScreen(),
    '/story' : (BuildContext context) => StoryScreen(),
    '/menupokedex' : (BuildContext context) => MenupokedexScreen(),
    


  };

  static  final customhome = <CustomCardHome>[ 

    CustomCardHome(title:'POKEDEX', color:AppThemes.lightTheme.colorScheme.onSecondary, route: '/menupokedex'),
    CustomCardHome(title:'INSTRUCCIONES', color:AppThemes.lightTheme.colorScheme.onSecondary, route: '/guia'),
    CustomCardHome(title:'DESARROLLADORES', color:AppThemes.lightTheme.colorScheme.onSecondary, route: '/info'),



  ];
}
