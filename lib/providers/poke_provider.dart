import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemania/models/infopokemon.dart';

class PokeProvider extends ChangeNotifier {

  final String _baseUrl = 'pokeapi.co';
  List<Welcome> pokemonData = [];
  bool isLoading = true;

  PokeProvider() {
    debugPrint('Iniciando PokeAPI de forma optimizada...');
    getPokemonData();
  }

  Future<String> _getJsonData(String endpoint) async {
    var url = Uri.https(_baseUrl, endpoint);
    final response = await http.get(url);
    return response.body;
  } 

  void getPokemonData() async {
    if (pokemonData.isNotEmpty) return;

    try {
      isLoading = true;
      notifyListeners();

      final listaDeFuturos = List.generate(
        20, 
        (index) => _getJsonData('/api/v2/pokemon/${index + 1}')
      );

      final respuestasJson = await Future.wait(listaDeFuturos);
      
      List<Welcome> listaTemporal = [];
      for (var datos in respuestasJson) {
        final pokemonDataResponse = Welcome.fromJson(datos);
        listaTemporal.add(pokemonDataResponse);
      }


      listaTemporal.sort((a, b) => a.id.compareTo(b.id));
      
      pokemonData = listaTemporal;

    } catch (e) {
      debugPrint('Error grave de sobrecarga en la PokeAPI: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}