import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musify/Musify/audioplyer.dart';
import 'package:musify/modal/Musicclass.dart';
import 'package:rxdart/rxdart.dart';

import '../modal/colorAndtext.dart';

class PositionData{
  PositionData(
      this.position,
      this.bufferedPosition,
      this.duration
      );
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class musicdetailscreen extends StatefulWidget {
  final music Music;

  musicdetailscreen(this.Music);

  @override
  State<musicdetailscreen> createState() => _musicdetailscreenState();
}

class _musicdetailscreenState extends State<musicdetailscreen> {
  late AudioPlayer _audioPlayer ;
  Stream<PositionData> get _positionDataStream =>
  Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
  _audioPlayer.positionStream,
  _audioPlayer.bufferedPositionStream,
  _audioPlayer.durationStream,
  (position,bufferedPosition,duration)=>PositionData(
  position,
  bufferedPosition,
  duration?? Duration.zero,),);
  @override
  void initState(){
    super.initState();
    _audioPlayer = AudioPlayer()..setAsset(widget.Music.track);
    _audioPlayer.positionStream;
    _audioPlayer.bufferedPositionStream;
    _audioPlayer.durationStream;
  }

  @override
  void dispose(){
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          color: black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 25),
        ),
        title: Text(
          widget.Music.wrapperType,
          style: size25black,
        ),
        actions: [
          Icon(
            Icons.search,
            size: 25,
            color: black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0,left: 25,top: 10),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.network(widget.Music.image,fit: BoxFit.fill,)),
            ),
            SizedBox(height: 10,),
            Text(widget.Music.trackName,style: size25black,),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 30.0,left: 30),
              child: Container(
                child: StreamBuilder<PositionData>(
                  stream: _positionDataStream,
                  builder: (context,snapshot){
                    final positionData = snapshot.data;
                    return ProgressBar(
                      barHeight: 5,
                        baseBarColor: Colors.grey.shade600,
                        bufferedBarColor: Colors.grey,
                        progressBarColor: Colors.black,
                        thumbColor: greenS400,
                        timeLabelTextStyle: size13black87,
                        progress: positionData?.position ?? Duration.zero,
                         buffered: positionData?.bufferedPosition ?? Duration.zero,
                        total: positionData?.duration ?? Duration.zero,
                      onSeek: _audioPlayer.seek,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.playlist_add,color: black,size: 25,),
               Icon(Icons.skip_previous,color: black,size: 25,),
               controls(audioPlayer: _audioPlayer),
               Icon(Icons.skip_next,color: black,size: 25,),
               Icon(Icons.shuffle,color: black,size: 25,),

            ],),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Song details : ",style: size13black87,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Text("kind ",style: size13black87,),
                     SizedBox(height: 10,),
                    Text("artistId ",style: size13black87,),
                     SizedBox(height: 10,),
                    Text("artistName ",style: size13black87,),
                     SizedBox(height: 10,),
                    Text("collectionId ",style: size13black87,),
                     SizedBox(height: 10,),
                    Text("collectionName ",style: size13black87,),

                 ],),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(": ",style: size13black87,),
                      SizedBox(height: 10,),
                      Text(": ",style: size13black87,),
                      SizedBox(height: 10,),
                      Text(": ",style: size13black87,),
                      SizedBox(height: 10,),
                      Text(": ",style: size13black87,),
                      SizedBox(height: 10,),
                      Text(": ",style: size13black87,),

                    ],),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.Music.kind,style: size13black87,),
                      SizedBox(height: 10,),
                      Text(widget.Music.artistId,style: size13black87,),
                      SizedBox(height: 10,),
                      Text(widget.Music.artistName,style: size13black87,),
                      SizedBox(height: 10,),
                      Text(widget.Music.collectionId,style: size13black87,),
                      SizedBox(height: 10,),
                      Text(widget.Music.collectionName,style: size13black87,),

                    ],),
                ],
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenS400),elevation: MaterialStatePropertyAll(10)),

                onPressed: (){}, child: Text("Viwe more collection",style: size16black,))
          ],
        ),
      ),
    ));
  }
}
