import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<IntroScreen> {

  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(

        controller: PageController(),
        onPageChanged: (index) {
          setState(() {
            indice = index;
          });

        },

        children: const [
          Intro1(),
          Intro2(),
          Intro3(),
          Intro4(),
        ],
      ),


    );
  }
}


class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: Colors.red,

        decoration: BoxDecoration(

          image: DecorationImage(
            
            image: AssetImage('assets/oak1.jpg'),
            fit: BoxFit.fitHeight
            
            )

        ),

        child: Stack(

          children: [

            Container(

              width: double.infinity,
              height: 200,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: EdgeInsets.only(top: 630,left: 35,right: 35),

              child: Stack(
                
                children: [

                  Container(

                    alignment: Alignment.center,

                    

                    child: Text(
                      
                      '¡Hola a todos! ¡Bienvenidos al mundo de los Pokémon! Mi nombre es Oak, ¡pero la gente me llama el Profesor Pokémon! Me alegra ver que estás aquí. Con esta nueva aplicación, tendrás el mapa definitivo para explorar, analizar y conocer absolutamente todo sobre tus Pokémon favoritos.',
                      style: TextStyle(

                        color: AppThemes.lightTheme.colorScheme.tertiary,
                        fontSize: 17,
                      ),
                      
                      ),
                  )
                ],

              ),
            )
          ],
        ),

      )
    );
  }
}

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: Colors.red,

        decoration: BoxDecoration(

          image: DecorationImage(
            
            image: AssetImage('assets/oak1.jpg'),
            fit: BoxFit.fitHeight
            
            )

        ),

        child: Stack(

          children: [

            Container(

              width: double.infinity,
              height: 200,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: EdgeInsets.only(top: 630,left: 35,right: 35),

              child: Stack(
                
                children: [

                  Container(

                    alignment: Alignment.center,

                    

                    child: Text(
                      
                      '¡Hola a todos! ¡Bienvenidos al mundo de los Pokémon! Mi nombre es Oak, ¡pero la gente me llama el Profesor Pokémon! Me alegra ver que estás aquí. Con esta nueva aplicación, tendrás el mapa definitivo para explorar, analizar y conocer absolutamente todo sobre tus Pokémon favoritos.',
                      style: TextStyle(

                        color: AppThemes.lightTheme.colorScheme.tertiary,
                        fontSize: 17,
                      ),
                      
                      ),
                  )
                ],

              ),
            )
          ],
        ),

      )
    );
  }
}

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: Colors.red,

        decoration: BoxDecoration(

          image: DecorationImage(
            
            image: AssetImage('assets/oak1.jpg'),
            fit: BoxFit.fitHeight
            
            )

        ),

        child: Stack(

          children: [

            Container(

              width: double.infinity,
              height: 200,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: EdgeInsets.only(top: 630,left: 35,right: 35),

              child: Stack(
                
                children: [

                  Container(

                    alignment: Alignment.center,

                    

                    child: Text(
                      
                      '¡Hola a todos! ¡Bienvenidos al mundo de los Pokémon! Mi nombre es Oak, ¡pero la gente me llama el Profesor Pokémon! Me alegra ver que estás aquí. Con esta nueva aplicación, tendrás el mapa definitivo para explorar, analizar y conocer absolutamente todo sobre tus Pokémon favoritos.',
                      style: TextStyle(

                        color: AppThemes.lightTheme.colorScheme.tertiary,
                        fontSize: 17,
                      ),
                      
                      ),
                  )
                ],

              ),
            )
          ],
        ),

      )
    );
  }
}

class Intro4 extends StatelessWidget {
  const Intro4({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        height: double.infinity,
        //color: Colors.red,

        decoration: BoxDecoration(

          image: DecorationImage(
            
            image: AssetImage('assets/oak1.jpg'),
            fit: BoxFit.fitHeight
            
            )

        ),

        child: Stack(

          children: [

            Container(

              width: double.infinity,
              height: 200,
              color: AppThemes.lightTheme.colorScheme.onPrimary,
              margin: EdgeInsets.only(top: 630,left: 35,right: 35),

              child: Stack(
                
                children: [

                  Container(

                    alignment: Alignment.center,

                    

                    child: Text(
                      
                      '¡Hola a todos! ¡Bienvenidos al mundo de los Pokémon! Mi nombre es Oak, ¡pero la gente me llama el Profesor Pokémon! Me alegra ver que estás aquí. Con esta nueva aplicación, tendrás el mapa definitivo para explorar, analizar y conocer absolutamente todo sobre tus Pokémon favoritos.',
                      style: TextStyle(

                        color: AppThemes.lightTheme.colorScheme.tertiary,
                        fontSize: 17,
                      ),
                      
                      ),

  
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppThemes.lightTheme.colorScheme.secondary,
                      foregroundColor: AppThemes.lightTheme.colorScheme.onPrimary,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      // pushReplacementNamed destruye la pantalla de intro para que el usuario no pueda "volver atrás" usando el botón del teléfono
                      Navigator.pushReplacementNamed(context, '/home'); 
                    },

                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Comenzar', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),textAlign: TextAlign.end,),
                        SizedBox(width: 8),
                        Icon(Icons.arrow_forward),
                      ],
                    ),

                  )
                ],

              ),
            )
          ],
        ),

      )
    );
  }
}
