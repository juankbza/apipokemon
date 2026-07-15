import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';



class GuiaScreen extends StatelessWidget {
   
  const GuiaScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      backgroundColor: AppThemes.lightTheme.colorScheme.tertiary,
      body: Container(

        color: AppThemes.lightTheme.colorScheme.primary,
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              
              Container(
            
              width: double.infinity,
              height: 80,
              //color: AppThemes.lightTheme.colorScheme.secondary,
              margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppThemes.lightTheme.colorScheme.secondary,
              ),
          
              child: Stack(
          
                children: [
                  
                  Container(
          
                  width: double.infinity,
                  height: 55,
                  margin: EdgeInsets.only(top: 7, left: 15, right: 15, bottom: 10),
          
                  child: Text(
                  
                    'Instrucciones ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                  
                      color: AppThemes.lightTheme.colorScheme.onPrimary,
                      fontSize: 45,
                      fontWeight: FontWeight.bold
                      
                    ),
                  
                  
                  ),
                ),]
              )
            
            ),
          
            Container(
          
              width: double.infinity,
              height: 270,
              //color: AppThemes.lightTheme.colorScheme.secondary,
              margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/pokemones.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          
            Container(
          
              width: double.infinity,
              height: 60,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Stack(
          
                children: [
                  
                  Container(
          
                  width: double.infinity,
                  height: 55,
                  margin: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 15),
          
                  child: Text(
                  
                    'Busca el Pokémon que quieras en el buscador.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                  
                      color: AppThemes.lightTheme.colorScheme.tertiary,
                      fontSize: 15,
                      //fontWeight: GoogleFonts.pixelifySans().fontWeight,
                      
                    ),
                  
                  
                  ),
                ),]
              )
            ),
        
            Container(
          
              width: double.infinity,
              height: 270,
              //color: AppThemes.lightTheme.colorScheme.secondary,
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/poke1.png'),
                  fit: BoxFit.cover,
                ),
                //color: AppThemes.lightTheme.colorScheme.secondary,
              ),
            ),
          
            Container(
          
              width: double.infinity,
              height: 55,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Stack(
          
                children: [
                  
                  Container(
          
                  width: double.infinity,
                  height: 55,
                  margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
          
                  child: Text(
                  
                    'Selecciónalo para ver todos sus datos.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                  
                      color: AppThemes.lightTheme.colorScheme.tertiary,
                      fontSize: 15,
                      //fontWeight: GoogleFonts.pixelifySans().fontWeight,
                      
                    ),
                  
                  
                  ),
                ),]
              )
          
            ),
            Container(
          
              width: double.infinity,
              height: 200,
              color: AppThemes.lightTheme.colorScheme.secondary,
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
          
            ),
          
            Container(
          
              width: double.infinity,
              height: 40,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
          
            ),
            ]
          ),
        ),
      ),


    );
  }
}