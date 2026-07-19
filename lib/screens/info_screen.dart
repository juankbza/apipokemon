import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = AppThemes.lightTheme.colorScheme.primary;
    final secondaryColor = AppThemes.lightTheme.colorScheme.secondary;
    final tertiaryColor = AppThemes.lightTheme.colorScheme.tertiary;
    final onPrimaryColor = AppThemes.lightTheme.colorScheme.onPrimary;

    return Scaffold(

      appBar: AppBar(

        backgroundColor: AppThemes.lightTheme.colorScheme.secondary,

        title: Text(
          
          
          'INFO',
          style: TextStyle(

            fontSize: 50,
            color: AppThemes.lightTheme.colorScheme.onPrimary,
          ),
          
          ),
      ),
      backgroundColor: tertiaryColor,
      body: SafeArea(
        child: Container(
          color: primaryColor,
          margin: const EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                

          

                Container(
                  width: double.infinity,
                  height: 200, 
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/profesor_oak.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 15,
                        left: 15,
                        right: 15,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(
                              alpha: 0.85,
                            ), 
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ), 
                          ),
                          child: const Text(
                            '¿Quieres conocer a los creadores de este pequeño universo? \n!Pues, aquí lo puedes hacer!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'DESARROLLADORES',
                    style: TextStyle(
                      color: onPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      
                      // TARJETA 1: JUAN GUEVARA

                      SizedBox(
                        width: 280,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Expanded(
                                  child: Container(
                                    height: 260,
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(

                                      image: const DecorationImage(
                                        image: AssetImage('assets/pokemones.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                // Columna de Tags
                                Column(
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('JUAN GUEVARA', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('ALFAJORERO', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('SARAMAMBICHE', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('TRAFICANTE', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Descripción de la primera tarjeta
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 15),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,

                              ),
                              child: Text(
                                'FUTURO ING SISTEMAS CON INTENCION DE MEJORAR CADA DIA',
                                style: TextStyle(
                                  color: tertiaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 20),

                      // TARJETA 2: ANYER VILLARROEL

                      SizedBox(
                        width: 280,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Expanded(
                                  child: Container(
                                    height: 260,
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(

                                      image: const DecorationImage(
                                        image: AssetImage('assets/poke1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                // Columna de Tags
                                Column(
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('ANYER VILLARROEL', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('PROGRAMADOR', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('TANGAMANDAPIO', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF905A7E),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text('DISEÑADOR', textAlign: TextAlign.center, style: TextStyle(color: onPrimaryColor, fontSize: 10, fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Descripción de la segunda tarjeta
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 15),
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,

                              ),
                              child: Text(
                                'APASIONADO POR FLUTTER Y EL DESARROLLO MÓVIL',
                                style: TextStyle(
                                  color: tertiaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}