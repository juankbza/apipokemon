import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioProvider extends ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _cancionActual;


  List<String> _colaCanciones = [];
  int _indiceActualCola = 0;
  bool _enModoCola = false;
  StreamSubscription? _playerSubscription;

  AudioProvider() {
    
    _playerSubscription = _audioPlayer.onPlayerComplete.listen((event) {
      if (_enModoCola) {
        _avanzarSiguienteCancion();
      }
    });
  }

  Future<void> reproducirMusica(String rutaAsset) async {
    _enModoCola = false;
    if (_cancionActual == rutaAsset) return;

    try {
      await _audioPlayer.stop();
      await _audioPlayer.setReleaseMode(ReleaseMode.loop);
      await _audioPlayer.play(AssetSource(rutaAsset));
      _cancionActual = rutaAsset;
    } catch (e) {
      print("Error al reproducir canción fija: $e");
    }
  }


  Future<void> reproducirCola(List<String> listaAssets) async {
    
    if (_enModoCola && _sonListasIdenticas(_colaCanciones, listaAssets)) return;

    _enModoCola = true;
    _colaCanciones = listaAssets;
    _indiceActualCola = 0;

    try {
      await _audioPlayer.stop();
      await _audioPlayer.setReleaseMode(ReleaseMode.release); 
      _reproducirTrackActual();
    } catch (e) {
      print("Error al iniciar la cola: $e");
    }
  }

  void _reproducirTrackActual() async {
    if (_colaCanciones.isEmpty) return;
    
    String siguienteTrack = _colaCanciones[_indiceActualCola];
    try {
      await _audioPlayer.play(AssetSource(siguienteTrack));
      _cancionActual = siguienteTrack;
      print("🎵 Sonando ahora de la cola: $siguienteTrack");
    } catch (e) {
      print("Error al reproducir track de la cola: $e");
    }
  }

  void _avanzarSiguienteCancion() {
    if (_colaCanciones.isEmpty) return;
    
    
    _indiceActualCola = (_indiceActualCola + 1) % _colaCanciones.length;
    _reproducirTrackActual();
  }

  bool _sonListasIdenticas(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  Future<void> detenerMusica() async {
    _enModoCola = false;
    await _audioPlayer.stop();
    _cancionActual = null;
  }

  @override
  void dispose() {
    _playerSubscription?.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }
}