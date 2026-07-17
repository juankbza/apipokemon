import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';

class PokedexScreen extends StatelessWidget {
   
  const PokedexScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        color: AppThemes.lightTheme.colorScheme.primary,

        child: SingleChildScrollView(
          child: Stack(
          
            children:[
          
              Column(
          
                children: [
          
                  Container(
                    width: double.infinity,
                    height: 80,
                    //color: AppThemes.lightTheme.colorScheme.secondary,
                    margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
          
                    decoration: BoxDecoration(
          
                      borderRadius: BorderRadius.circular(10),
                      color: AppThemes.lightTheme.colorScheme.secondary,
                    ),
          
                    child: Stack(
          
          
                      children: [
          
                        Row(
          
                          children: [
                            
                            Container(
                          
                            width: 230,
                            height: 50,
                            //color: AppThemes.lightTheme.colorScheme.onPrimary,
                            margin: EdgeInsets.only(top:15,left: 20),
                            child: Text('CHARIZARD',
                            
                            style: TextStyle(
                          
                              color: AppThemes.lightTheme.colorScheme.onPrimary,
                              fontSize: 40,
                          
                            ),
                            ),
                          ),
          
                          Container(
          
                            width: 60,
                            height: 50,
                            //color: AppThemes.lightTheme.colorScheme.onPrimary,
                            margin: EdgeInsets.only(top: 15 ,left: 30),
                            decoration: BoxDecoration(
          
                              borderRadius: BorderRadius.circular(100),
          
                              image: DecorationImage(
                                
                                image: AssetImage('assets/images/fondorpueba.png'),
                                fit: BoxFit.cover,
                                
                                ),
                                
                                
                            ),
                          )
                          ]
                        )
                      ],
                    )
                    
                  ),
          
                  Row(
                    
                    children: [
          
                      Container(
                        
                        width: 250,
                        height: 500,
                        //color: AppThemes.lightTheme.colorScheme.secondary,
                        margin: const EdgeInsets.only(top: 20,left: 20,right: 0),
          
                        decoration: BoxDecoration(
          
                          image: DecorationImage(
                            
                            image: AssetImage('assets/images/charizard.png'),
                            fit: BoxFit.cover,
                        ),
                        
                      ),
                      ),
          
                      Column(
                        children: [
                          
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
          
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
          
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
          
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
                        
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
          
                        Container(
                          
          
                          width: 100,
                          height: 70,
                          //color: AppThemes.lightTheme.colorScheme.onSecondary,
                          margin: const EdgeInsets.only(top: 10,left: 20,right: 20),
                          decoration: BoxDecoration(
          
                            borderRadius: BorderRadius.circular(10),
                            color: AppThemes.lightTheme.colorScheme.onSecondary,
          
                            
                          ),
                        ),
                        ],
                      ),
          
                    ],
          
                  ),
          
                  Container(
          
                    width: double.infinity,
                    height: 220,
                    color: AppThemes.lightTheme.colorScheme.onPrimary,
                    margin: EdgeInsets.only(top: 20,left: 20, right: 20),
                    child: Stack(
          
                      children: [
                        
                        Container(
          
                        margin: EdgeInsets.only(top:10,left: 15,right: 15),
                        child: Text(
                          
                          'Aliqua aliquis ocuptate Lorem labore fugiat irure anim ex cupidatat eiusmod enim qui consequat exercitation. Excepteur aliqua id sunt nisi velit.',
                          style: TextStyle(                      
                            fontSize: 20,
                            color: AppThemes.lightTheme.colorScheme.tertiary,
                          ),
                        
                        ),
                      ),]
                    ),
          
          
                  )
                ],
              )
            ]
          ),
        )

      )
    );
  }
}