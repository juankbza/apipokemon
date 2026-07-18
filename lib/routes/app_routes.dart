import 'package:flutter/material.dart';
import 'package:pokemania/screens/screens.dart';

class AppRoutes {

  static String initialRoute = "/guia";

  static Map<String, Widget Function(BuildContext)> routes = {

    '/info' : (BuildContext context) => InfoScreen(),
    '/home' : (BuildContext context) => HomeScreen(),
    '/guia' : (BuildContext context) => GuiaScreen(),
    '/pokedex' : (BuildContext context) => PokedexScreen(),
    '/story' : (BuildContext context) => StoryScreen(),
    


  };
}
