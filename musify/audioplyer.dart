import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class controls extends StatelessWidget {
  final AudioPlayer audioPlayer;

  controls({super.key, required this.audioPlayer});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
        stream: audioPlayer.playerStateStream,
        builder: (context, SnapShot) {
          final playerState = SnapShot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (!(playing ?? false)) {
            return IconButton(onPressed: audioPlayer.play,
                iconSize: 35,
                color: Colors.black,
                icon: Icon(Icons.play_arrow_outlined));
          }else if(processingState != ProcessingState.completed){
            return  IconButton(onPressed: audioPlayer.pause,
                iconSize: 35,
                color: Colors.black,
                icon: Icon(Icons.pause_rounded));
          }
          return Icon(Icons.play_arrow_outlined,size: 35,color: Colors.black,);
        });
  }
}



