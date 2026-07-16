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
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    'INFO',
                    style: TextStyle(
                      color: onPrimaryColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // 2. CAJA DE BIENVENIDA: PROFESOR OAK
                Container(
                  width: double.infinity,
                  height:
                      200, // Puedes ajustar la altura si necesitas más espacio
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // 1. Imagen de fondo del Profesor Oak usando DecorationImage
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/profesor_oak.png',
                      ), // <-- Cambia esto por el nombre real de tu imagen
                      fit: BoxFit
                          .cover, // Hace que la imagen cubra todo el contenedor
                    ),
                  ),
                  // 2. El Stack para apilar elementos
                  child: Stack(
                    children: [
                      // Posicionamos el contenedor de texto en la parte de abajo
                      Positioned(
                        bottom: 15,
                        left: 15,
                        right: 15,
                        // 3. El contenedor interno para el mensaje
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(
                              alpha: 0.85,
                            ), // Un fondo blanco ligeramente transparente
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ), // Un borde negro estilo GameBoy
                          ),
                          child: const Text(
                            '¿Quieres conocer a los creadores de este pequeño universo? \n!Pues, aquí lo puedes hacer!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              // fontFamily: 'Pokky Bird', // Descomenta esta línea si quieres usar tu fuente pixelada aquí también
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
                      _buildDeveloperCard(
                        imagePath: 'assets/images/pokemones.png',
                        name: 'JUAN GUEVARA',
                        role: 'ALFAJORERO',
                        role2: "SARAMAMBICHE",
                        extraInfo: 'TRAFICANTE',
                        description:
                            'FUTURO ING SISTEMAS CON INTENCION DE MEJORAR CADA DIA',
                      ),
                      const SizedBox(width: 20),

                      _buildDeveloperCard(
                        imagePath: 'assets/images/poke1.png',
                        name: 'ANYER VILLARROEL',
                        role: 'PROGRAMADOR',
                        role2: "TANGAMANDAPIO",
                        extraInfo: 'DISEÑADOR',
                        description:
                            'APASIONADO POR FLUTTER Y EL DESARROLLO MÓVIL',
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

  Widget _buildDeveloperCard({
    required String imagePath,
    required String name,
    required String role,
    required String role2,
    required String extraInfo,
    required String description,
  }) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  children: [
                    _buildTag(name),
                    _buildTag(role),
                    _buildTag(role2),
                    _buildTag(extraInfo),
                    _buildTag(''),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              description,
              style: TextStyle(
                color: AppThemes.lightTheme.colorScheme.tertiary,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.only(bottom: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF905A7E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: text.isNotEmpty
          ? Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppThemes.lightTheme.colorScheme.onPrimary,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            )
          : null,
    );
  }
}
