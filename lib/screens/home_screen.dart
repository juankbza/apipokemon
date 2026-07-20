import 'package:flutter/material.dart';
import 'package:pokemania/routes/app_routes.dart';
import 'package:pokemania/providers/audio_provider.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
    void initState() {
    super.initState();

    Provider.of<AudioProvider>(context, listen: false).reproducirCola([
      'audio/audiofondo.mp3',
      'audio/audiofondo2.mp3',
      'audio/musica3.mp3',
    ]);
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        

        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/images/prueba2.png'),
            fit: BoxFit.cover,

          
          
          ),
        
        ),

        child: Stack(

          children: [

            Container(

              
              width: 200,
              height: 250,
              
              margin: EdgeInsets.only(top: 300,left: 110, right: 30),
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