import 'package:flutter/material.dart';
import 'package:pokemania/models/models.dart';
import 'package:pokemania/providers/poke_provider.dart';
import 'package:pokemania/themes/app_themes.dart';
import 'package:provider/provider.dart';
import 'package:pokemania/screens/pokedex_screen.dart'; 

class MenupokedexScreen extends StatefulWidget {
  const MenupokedexScreen({super.key});

  @override
  State<MenupokedexScreen> createState() => _MenupokedexScreenState();
}

class _MenupokedexScreenState extends State<MenupokedexScreen> {
  List<Welcome> pokemonData = [];
  final TextEditingController _idController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokeProvider = Provider.of<PokeProvider>(context);
    pokemonData = pokeProvider.pokemonData;

    return Scaffold(
      appBar: AppBar(
        title: Text('POKEDEX',
        style: TextStyle(
          fontSize: 35,
          color: AppThemes.lightTheme.colorScheme.onPrimary
        ),
      ),
        backgroundColor: AppThemes.lightTheme.colorScheme.secondary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/actual2.png'),
            fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              
              
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.red[900], 
                  border: Border.all(color: Colors.black, width: 4), 
                ),
                margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _idController,
                      keyboardType: TextInputType.number, 
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'INGRESA EL ID DEL POKÉMON...',
                        hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
                        prefixIcon: const Icon(Icons.search, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        final textoId = _idController.text.trim();
                        if (textoId.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PokedexScreen(pokemonId: textoId)),
                          );
                        }
                      },
                      child: const Text('BUSCAR EN POKÉDEX', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 5),
                child: Text(
                  "--- COLISEE KANTO ---",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 2),
                ),
              ),


              SizedBox(
                height: 450, 
                child: pokemonData.isEmpty
                    ? const Center(child: CircularProgressIndicator(color: Colors.white))
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15), 
                        itemCount: pokemonData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final pokemon = pokemonData[index];
                          final idFormateado = pokemon.id.toString().padLeft(3, '0');


                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PokedexScreen(pokemonId: pokemon.id.toString()),
                                ),
                              );
                            },
                            child: Container(
                              width: 200,
                              height: 250,
                              decoration: BoxDecoration(
                                color: AppThemes.lightTheme.colorScheme.onPrimary,
                                border: Border.all(color: Colors.black, width: 4),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                              padding: const EdgeInsets.only(top: 15, bottom: 10),
                              child: Column(
                                children: [
                                  Text(
                                    '#$idFormateado',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      color: Color.fromARGB(255, 102, 102, 102), 
                                      fontSize: 14
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    pokemon.name.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      fontWeight: FontWeight.bold, 
                                      fontSize: 16,
                                      letterSpacing: 0.5
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 1),
                                      child: FadeInImage(
                                        placeholder: const AssetImage('assets/images/charizard.png'), 
                                        image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.id}.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              
              const SizedBox(height: 25), 
            ],
          ),
        ),
      ),
    );
  }
}