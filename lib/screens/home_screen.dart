import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('HomeScreen',style: TextStyle(color: AppThemes.mikuLightTheme.colorScheme.secondary),)
         ,
      ),
    );
  }
}