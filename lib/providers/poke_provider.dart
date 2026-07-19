
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemania/models/infopokemon.dart';

class PokeProvider extends ChangeNotifier {

  //final String _apiKey = ''; no tengo api key no se necesita al parecer
  final String _baseUrl = 'pokeapi.co';
  final String _languaje = 'es-ES';

  dynamic pokemonData = [];

  PokeProvider(){

    print('iniciando pokeapi');
    getPokemonData();
  }

 Future<String> _getJsonData(String endpoint, [int? page = 1]) async{

  var url = Uri.http(_baseUrl, endpoint, {

   // 'api_key' : _apiKey,
    'languaje' : _languaje,
    'page' : '$page' 

  });

  final response = await http.get(url);
  print(response.body);
  return response.body;

 } 

  void getPokemonData() async {

    print('prueba pokemon data');

    final jsonData = await _getJsonData('/api/v2/pokemon/25/');
    final pokemonDataResponse = Welcome.fromJson(jsonData);
    pokemonData = pokemonDataResponse.id ;
    print(pokemonDataResponse.id);
    print(pokemonDataResponse.name);  
    print(pokemonDataResponse.abilities);
    print(pokemonDataResponse.types);
    print(pokemonDataResponse.flavorText);
    print(pokemonDataResponse.sprites);


    notifyListeners();

  }
}

