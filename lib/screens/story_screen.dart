import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // CAPA 1: FONDO DE PRADERA

          Positioned.fill(
            child: Image.asset(
              'assets/images/fondoPrueba.png', 
              fit: BoxFit.cover, 
            ),
          ),

          // CAPA 2: PROFESOR OAK

          Positioned(
            bottom: 140,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/profesor_oak_prueba.png',
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // CAPA 3: CAJA DE DIÁLOGO

          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.95),
                border: Border.all(color: Colors.black, width: 4),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min, 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '¡Hola! ¡Bienvenido al mundo de los Pokémon!\n\nMe llamo Oak, pero la gente me llama el Profesor Pokémon.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '▼', 
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}