import 'package:flutter/material.dart';
import 'package:pokemania/themes/app_themes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    final Color mainIndigo = colorScheme.primary;
    final Color mainRed = colorScheme.secondary;
    final Color white = colorScheme.tertiary;
    final Color mauve = AppThemes.mauve;
    
    return Scaffold(
      backgroundColor: mainIndigo,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              padding: const EdgeInsets.all(20),
              color: mainIndigo,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/pokebola.png',
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'POKEMANIA APP |',
                          style: TextStyle(
                            color: white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          'HOME SCREEN',
                          style: TextStyle(
                            color: white,
                            fontSize: 32,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: mainRed,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                children: [
                  Text(
                    'TIPOGRAFÍAS',
                    style: TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 2),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                      child: _TypographyBlock(
                        pkText: 'PK',
                        fontName: 'IBEAC NEUE',
                        fontSize: 12,
                      )
                      ),
                      const Expanded(
                      child: _TypographyBlock(
                        pkText: 'pk',
                        fontName: 'Pokky Bird',
                        fontSize: 16,
                      )
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(20),
              color: mainIndigo,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ColorPaletteColumn(mainIndigo: mainIndigo, mainRed: mainRed, white: white, mauve: mauve),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: _PokemonCard(
                      imagePath: 'assets/images/pokebola.png', 
                      name: 'CHARIZARD',
                      id: 'POKEDEX 008',
                      type: 'TIPO FURSO/VOLADOR',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: _PokemonCard(
                      imagePath: 'assets/images/pokebola.png', 
                      name: 'LUGIA',
                      id: 'POKEDEX 240',
                      type: 'VOLADOR',
                      hasBorder: true, 
                      borderColor: mauve, 
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class _TypographyBlock extends StatelessWidget {
  final String pkText;
  final String fontName;
  final double fontSize;

  const _TypographyBlock({
    required this.pkText,
    required this.fontName,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          pkText,
          style: const TextStyle(color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          'ATRAPARLOS A TODOS, ES NUESTRA MISIÓN.',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        const Text(
          'ENTRENAR ES MI CAUSA, GANAR ES MI META.',
          style: TextStyle(color: Colors.white, fontSize: 10),
        ),
        Text(
          fontName,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
      ],
    );
  }
}

class _ColorPaletteColumn extends StatelessWidget {
  final Color mainIndigo;
  final Color mainRed;
  final Color white;
  final Color mauve;

  const _ColorPaletteColumn({
    required this.mainIndigo,
    required this.mainRed,
    required this.white,
    required this.mauve,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PALETA DE\nCOLORES',
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
        const SizedBox(height: 20),
        _ColorSwatch(color: mainIndigo, label: 'COLOR\nPRINCIPAL\nP975080'),
        _ColorSwatch(color: mainRed, label: 'COLOR\nDECANDARIO\n#0500BA'),
        _ColorSwatch(color: white, label: 'COLOR\nDECANDARIO\n#FFFFFF'),
        _ColorSwatch(color: mauve, label: 'COLOR\nDECANDARIO\nMauvate'),
      ],
    );
  }
}

class _ColorSwatch extends StatelessWidget {
  final Color color;
  final String label;

  const _ColorSwatch({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class _PokemonCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String id;
  final String type;
  final bool hasBorder;
  final Color? borderColor;

  const _PokemonCard({
    required this.imagePath,
    required this.name,
    required this.id,
    required this.type,
    this.hasBorder = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: hasBorder && borderColor != null
            ? Border.all(color: borderColor!, width: 4)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            color: AppThemes.mauve,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  id,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
                Text(
                  type,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}