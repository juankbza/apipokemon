import 'package:flutter/material.dart';
import 'package:pokemania/providers/poke_provider.dart';
import 'package:pokemania/routes/app_routes.dart';
import 'package:provider/provider.dart';  


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {


    //final pokeProvider = Provider.of<PokeProvider>(context);
    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: AppThemes.lightTheme.colorScheme.primary,

        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/prueba2.png'),
            fit: BoxFit.cover,

          
          
          ),
        
        ),

        child: Stack(

          children: [

            Container(

              
              width: 200,
              height: 200,
              ///color: Colors.red,
              margin: EdgeInsets.only(top: 350,left: 100, right: 30),
              child: ListView.builder(
                
                itemCount: AppRoutes.customhome.length,
                itemBuilder: (BuildContext context, int index){

                  return AppRoutes.customhome[index];
                }
                
                ),
          


            )
          ],
        ),

        
      )
    );
  }
}