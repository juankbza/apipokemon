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
        
        color: Colors.grey,

        child: Column(
          
          children: 
          
          
          [
            Container(

              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(top: 0,left: 0,right: 0,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.grey,
              ),
            ),

            Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(top: 0,left: 25,right: 25,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.red,
              ),
            ),


            Container(
            width: double.infinity,
            height: 700,
        
            margin:  EdgeInsets.only(top: 0,left: 25,right: 25,bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color:  const Color.fromARGB(255, 2, 49, 87),
            ),
          )],
        )
        
        


      ),
      
      
      
      
      
    );
  }
}