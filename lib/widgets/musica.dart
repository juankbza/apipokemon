import 'package:audioplayers/audioplayers.dart';

class MusicaFondo{

  final AudioPlayer reproductor = AudioPlayer();

  Future<void> iniciar()async{

    //await reproductor.setReleaseMode(ReleaseMode.loop);
    await reproductor.play(AssetSource('musica3.mp3'),);


  }

  Future<void> detener()async{

    await reproductor.stop();


  }
}