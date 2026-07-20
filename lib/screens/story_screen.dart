import 'package:flutter/material.dart';
import 'package:pokemania/screens/home_screen.dart';
import 'package:pokemania/providers/audio_provider.dart';
import 'package:provider/provider.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  
  double whiteOverlayOpacity = 1.0;
  double oakOpacity = 0.0;
  double dialogOpacity = 0.0;
  bool yaEstaNavegando = false;

  final List<String> dialogos = [
    '¡Hola! ¡Bienvenido al mundo de los Pokémon!',
    'Me llamo Oak, pero la gente me llama el Profesor Pokémon.',
    'Este mundo está habitado por criaturas maravillosas.\nYo he dedicado mi vida a estudiarlas.',
    'He creado una herramienta muy especial para registrar sus datos...\n¡La Pokédex!',
    '¡Tu propia leyenda está a punto de comenzar!\n¡Toca la pantalla una vez más para empezar!'
  ];

  int indiceActual = 0;

  @override
  void initState() {
    super.initState();

  Provider.of<AudioProvider>(context, listen: false)
      .reproducirMusica('audio/oak.mp3');

    _iniciarSecuenciaStory();
  }

  void _iniciarSecuenciaStory() async {
    await Future.delayed(const Duration(milliseconds: 300));
    if (mounted) {
      setState(() {
        whiteOverlayOpacity = 0.0; 
      });
    }

    await Future.delayed(const Duration(milliseconds: 1500));
    if (mounted) {
      setState(() {
        oakOpacity = 1.0;
      });
    }

    await Future.delayed(const Duration(milliseconds: 800));
    if (mounted) {
      setState(() {
        dialogOpacity = 1.0;
      });
    }
  }


  void _navegarAlHome() async {
    if (yaEstaNavegando) return;
    yaEstaNavegando = true;


    setState(() {
      whiteOverlayOpacity = 1.0;
    });


    await Future.delayed(const Duration(milliseconds: 1500));

    if (!mounted) return;


    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 800),
        
    )  );
  }

  void avanzarHistoria() {
    if (dialogOpacity < 1.0 || yaEstaNavegando) return;

    setState(() {
      if (indiceActual < dialogos.length - 1) {
        indiceActual++;
      } else {
        _navegarAlHome();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: avanzarHistoria,
        child: Stack(
          children: [
            
            
            Positioned.fill(
              child: Image.asset(
                'assets/images/fondo_pradera.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(color: Colors.green),
              ),
            ),


            Positioned(
              bottom: 140,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                opacity: oakOpacity,
                duration: const Duration(seconds: 1),
                child: Center(
                  child: Image.asset(
                    'assets/images/profesor_oak_prueba.png',
                    height: 400,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 100, color: Colors.white),
                  ),
                ),
              ),
            ),


            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: AnimatedOpacity(
                opacity: dialogOpacity,
                duration: const Duration(milliseconds: 800),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.95),
                    border: Border.all(color: Colors.black, width: 4),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dialogos[indiceActual],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '>',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Positioned(
              top: MediaQuery.of(context).padding.top + 15, 
              right: 20,
              child: AnimatedOpacity(
                opacity: dialogOpacity, 
                duration: const Duration(milliseconds: 500),
                child: InkWell(
                  onTap: _navegarAlHome,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Text(
                      'SKIP >',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),


            IgnorePointer(
              
              ignoring: whiteOverlayOpacity == 0.0,
              child: AnimatedOpacity(
                opacity: whiteOverlayOpacity,
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}