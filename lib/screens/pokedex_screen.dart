import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemania/themes/app_themes.dart';

class PokedexScreen extends StatefulWidget {
  final String pokemonId;

  const PokedexScreen({super.key, required this.pokemonId});

  @override
  State<PokedexScreen> createState() => _PokedexScreenState();
}

class _CenterText extends StatelessWidget {
  final String label;
  final String value;

  const _CenterText({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _PokedexScreenState extends State<PokedexScreen> {
  bool _cargando = true;
  String _errorMensaje = '';
  
  
  String _nombrePokemon = 'CARGANDO...';
  String _urlImagen = '';
  String _descripcion = 'Buscando reporte en la base de datos...';
  
  
  final Map<String, String> _datosCaja = {
    'TIPO': '---',
    'HP': '---',
    'ATK': '---',
    'DEF': '---',
    'ALT': '---',
    'PES': '---',
  };

  @override
  void initState() {
    super.initState();
    _cargarDatosCompletos();
  }

  Future<void> _cargarDatosCompletos() async {
    try {
      
      final urlDatos = Uri.parse('https://pokeapi.co/api/v2/pokemon/${widget.pokemonId}');
      final respuestaDatos = await http.get(urlDatos);

      if (respuestaDatos.statusCode != 200) throw Exception();
      final datosJson = jsonDecode(respuestaDatos.body);

      _nombrePokemon = datosJson['name'].toString().toUpperCase();
      
      
      _urlImagen = datosJson['sprites']['other']['official-artwork']['front_default'] ?? 
                   datosJson['sprites']['front_default'] ?? '';


      List tipos = datosJson['types'];
      String tiposConcatenados = tipos.map((t) => t['type']['name'].toString().toUpperCase()).join('/');


      List stats = datosJson['stats'];
      String hp = '0', atk = '0', def = '0';
      for (var s in stats) {
        final nombreStat = s['stat']['name'];
        if (nombreStat == 'hp') hp = s['base_stat'].toString();
        if (nombreStat == 'attack') atk = s['base_stat'].toString();
        if (nombreStat == 'defense') def = s['base_stat'].toString();
      }


      double alturaM = (datosJson['height'] as num) / 10;
      double pesoKg = (datosJson['weight'] as num) / 10;


      _datosCaja['TIPO'] = tiposConcatenados;
      _datosCaja['HP'] = hp;
      _datosCaja['ATK'] = atk;
      _datosCaja['DEF'] = def;
      _datosCaja['ALT'] = '${alturaM}m';
      _datosCaja['PES'] = '${pesoKg}kg';


      final urlEspecie = Uri.parse('https://pokeapi.co/api/v2/pokemon-species/${widget.pokemonId}');
      final respuestaEspecie = await http.get(urlEspecie);

      if (respuestaEspecie.statusCode == 200) {
        final especieJson = jsonDecode(respuestaEspecie.body);
        List textosEntrada = especieJson['flavor_text_entries'];
        
        
        final entradaEspanol = textosEntrada.firstWhere(
          (element) => element['language']['name'] == 'es',
          orElse: () => textosEntrada.firstWhere(
            (element) => element['language']['name'] == 'en',
            orElse: () => null,
          ),
        );

        if (entradaEspanol != null) {
          
          _descripcion = entradaEspanol['flavor_text'].toString().replaceAll('\n', ' ').replaceAll('\f', ' ');
        } else {
          _descripcion = 'No hay descripción disponible para este espécimen.';
        }
      }

      if (mounted) {
        setState(() => _cargando = false);
      }

    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMensaje = '¡ID #${widget.pokemonId} no registrado o sin señal de red!';
          _cargando = false;
        });
      }
    }
  }


  Widget _construirCajitaDato(String etiqueta, String valor) {
    return Container(
      width: 100,
      height: 70,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppThemes.lightTheme.colorScheme.onSecondary,
        border: Border.all(color: Colors.black26, width: 2),
      ),
      child: _CenterText(label: etiqueta, value: valor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.lightTheme.colorScheme.primary,
      appBar: AppBar(
        backgroundColor: AppThemes.lightTheme.colorScheme.secondary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('VISTA POKÉDEX #${widget.pokemonId}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),
      ),
      body: _cargando
          ? const Center(child: CircularProgressIndicator(color: Colors.white))
          : _errorMensaje.isNotEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(_errorMensaje,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                        textAlign: TextAlign.center
                    ),
                  ),
                )
              : SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Column(
                          children: [

                            Container(
                              width: double.infinity,
                              height: 80,
                              margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppThemes.lightTheme.colorScheme.secondary,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          _nombrePokemon,
                                          style: TextStyle(
                                            color: AppThemes.lightTheme.colorScheme.onPrimary,
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    width: 60,
                                    height: 50,
                                    margin: const EdgeInsets.only(left: 15, right: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white24,
                                      image: _urlImagen.isNotEmpty
                                          ? DecorationImage(
                                              image: NetworkImage(_urlImagen),
                                              fit: BoxFit.contain,
                                            )
                                          : null,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            
                            
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Expanded(
                                  child: Container(
                                    height: 490, 
                                    margin: const EdgeInsets.only(top: 10, left: 20, right: 0),
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      image: _urlImagen.isNotEmpty
                                          ? DecorationImage(
                                              image: NetworkImage(_urlImagen),
                                              fit: BoxFit.contain,
                                            )
                                          : null,
                                    ),
                                    child: _urlImagen.isEmpty
                                        ? const Icon(Icons.photo, size: 80, color: Colors.white38)
                                        : null,
                                  ),
                                ),


                                Column(
                                  children: [
                                    _construirCajitaDato('TIPO', _datosCaja['TIPO']!),
                                    _construirCajitaDato('PUNTOS VIDA', _datosCaja['HP']!),
                                    _construirCajitaDato('ATAQUE', _datosCaja['ATK']!),
                                    _construirCajitaDato('DEFENSA', _datosCaja['DEF']!),
                                    _construirCajitaDato('ESTATURA', _datosCaja['ALT']!),
                                    _construirCajitaDato('PESO', _datosCaja['PES']!),
                                  ],
                                ),
                              ],
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 0.95),
                                border: Border.all(color: Colors.black, width: 4),
                                
                              ),
                              width: double.infinity,
                              constraints: const BoxConstraints(minHeight: 150),
                              margin: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 20),
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                _descripcion,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppThemes.lightTheme.colorScheme.tertiary,
                                  height: 1.4,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
    );
  }
}