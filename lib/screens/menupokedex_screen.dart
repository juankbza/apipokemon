import 'package:flutter/material.dart';
import 'package:pokemania/models/models.dart';
import 'package:pokemania/providers/poke_provider.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:provider/provider.dart';

class MenupokedexScreen extends StatefulWidget {
  
   
  const MenupokedexScreen({super.key});

  @override
  State<MenupokedexScreen> createState() => _MenupokedexScreenState();
}

class _MenupokedexScreenState extends State<MenupokedexScreen> {

  List<Welcome> pokemonData = [];

  @override
  Widget build(BuildContext context) {


    
    return Scaffold(

      appBar: AppBar(

        title: Text('POKEDEX',style: TextStyle(fontSize: 35,color: AppThemes.lightTheme.colorScheme.onPrimary),),
        backgroundColor: AppThemes.lightTheme.colorScheme.secondary,
      ),

      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: Colors.red,

        decoration: BoxDecoration(

          image: DecorationImage(
            
            image: AssetImage('assets/actual2.png'),
            fit: BoxFit.cover

            
            
            ),
          

        ),
        
        child: Column(
        
          children: [
        
            Expanded(
              child: ListView.builder(
              
                scrollDirection: Axis.horizontal,
                itemCount: pokemonData.length,
                itemBuilder: (BuildContext context, int index){
                            
                  return Container(
                            
                    width: 250,
                    
                    color: AppThemes.lightTheme.colorScheme.onPrimary,
                    margin: EdgeInsets.all(25),
        
                    child: Column(
                      children: [
                        
                        FadeInImage(
                        
                        placeholder: AssetImage('assets/charizard.png'), 
                        image: NetworkImage(pokemonData[index].sprites.toString())
                        
                        ),
        
        
                        ]
                    ),
                    
                            
                  );
                }
                
                ),
            ),
        
            Container(
        
              width: double.infinity,
              height: 200,
              color: Colors.red,
              margin: EdgeInsets.all(20),
              
            )
        
            
        
        
          ],
        )
      )
    );
  }
}