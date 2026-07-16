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
            image: AssetImage('assets/images/pokemones.png'),
            fit: BoxFit.cover,
          
          ),
        
        ),

        child: Stack(

          children: [

            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              
              


              children: [

                Container(

                  width: 80,
                  height: 600,
                  color: AppThemes.lightTheme.colorScheme.secondary,
                  margin: EdgeInsetsDirectional.only(top: 120, start: 300, end: 10, bottom: 10),
                )
              ],
            )
          ]
        )



      )
    );
  }
}