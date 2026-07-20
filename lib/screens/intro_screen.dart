import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:pokemania/screens/story_screen.dart';
import 'package:pokemania/providers/audio_provider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  
  double gameBoyOpacity = 0.0;
  double gameBoyScale = 1.0;
  double phoneWhiteFlash = 0.0;
  bool mostrarImagenParpadeante = true;
  
  
  Timer? _timerParpadeo;

  @override
  void initState() {
    super.initState();

    Provider.of<AudioProvider>(context, listen: false)
      .reproducirMusica('audio/titulo.mp3');
    
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          gameBoyOpacity = 1.0;
        });
      }
    });


    _timerParpadeo = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      if (mounted) {
        setState(() {
          mostrarImagenParpadeante = !mostrarImagenParpadeante;
        });
      }
    });
  }


  @override
  void dispose() {
    _timerParpadeo?.cancel();
    super.dispose();
  }


  void accionPresionarStart() {
    _timerParpadeo?.cancel(); 

    setState(() {
      mostrarImagenParpadeante = false; 
      gameBoyScale = 15.0;    
      phoneWhiteFlash = 1.0;  
    });


    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            
            pageBuilder: (context, animation, secondaryAnimation) => const StoryScreen(),
            
            
            transitionDuration: const Duration(milliseconds: 1500), 
            
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              
              return Container(
                color: Colors.white,
                
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.lightTheme.colorScheme.primary,
      body: Stack(
        children: [

          Center(
            child: AnimatedOpacity(
              opacity: gameBoyOpacity,
              duration: const Duration(seconds: 2),
              curve: Curves.easeIn,
              child: AnimatedScale(
                scale: gameBoyScale,
                duration: const Duration(seconds: 2),
                curve: Curves.easeInOutExpo,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    
                    Image.asset(
                      'assets/images/gameboy.png', 
                      width: 320,
                      fit: BoxFit.contain,
                    ),

                    Positioned(
                      top: 141,
                      left: 113,
                      child: AnimatedOpacity(
                        opacity: mostrarImagenParpadeante ? 1.0 : 0.0,

                        duration: const Duration(milliseconds: 200), 
                        child: Image.asset(
                          'assets/images/start.png', 
                          width: 104,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),


                    Positioned(
                      bottom: 80, 
                      left: 150,   
                      child: GestureDetector(
                        onTap: accionPresionarStart,
                        child: Container(
                          width: 45,
                          height: 40,
                          color: const Color.fromARGB(0, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          IgnorePointer(
            ignoring: phoneWhiteFlash < 1.0, 
            child: AnimatedOpacity(
              opacity: phoneWhiteFlash,
              duration: const Duration(seconds: 2),
              curve: Curves.easeIn,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}