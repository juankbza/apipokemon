import 'package:flutter/material.dart';
import 'package:pokemania/screens/screens.dart';

class AppRoutes {

<<<<<<< HEAD
  static String initialRoute = "/home";
=======
  static String initialRoute = "/guia";
>>>>>>> b767c307e60cd5c2b7a1dbc4541301162627f31d

  static Map<String, Widget Function(BuildContext)> routes = {

    '/info' : (BuildContext context) => InfoScreen(),
    '/home' : (BuildContext context) => HomeScreen(),
    '/guia' : (BuildContext context) => GuiaScreen(),
    '/pokedex' : (BuildContext context) => PokedexScreen(),
    '/story' : (BuildContext context) => StoryScreen(),
    


  };
}
