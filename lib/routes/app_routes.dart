import 'package:flutter/material.dart';
import 'package:pokemania/screens/screens.dart';

class AppRoutes {

<<<<<<< HEAD
  static String initialRoute = "/home";
=======
  static String initialRoute = "/info";
>>>>>>> 13fd895559077f5ca38f034d28e39a672dc2fbfd

  static Map<String, Widget Function(BuildContext)> routes = {

    '/info' : (BuildContext context) => InfoScreen(),
    '/home' : (BuildContext context) => HomeScreen(),
    '/guia' : (BuildContext context) => GuiaScreen(),
    


  };



}