import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: AppThemes.lightTheme.colorScheme.primary,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/prueba2.png'),
            fit: BoxFit.cover,
          
          ),
        
        ),

        
      )
    );
  }
}