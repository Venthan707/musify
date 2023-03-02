import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import '../modal/Apiclass.dart';
import '../modal/colorAndtext.dart';

class moviepreviwepage extends StatefulWidget {
  final  movie movieList;
  moviepreviwepage(this.movieList);
  @override
  State<moviepreviwepage> createState() => _moviepreviwepageState();
}

class _moviepreviwepageState extends State<moviepreviwepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
          widget.movieList.trackName.toString(),
          style: size16black,
        ),
        actions: [
          Icon(
            Icons.share,
            size: 25,
            color: black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            child:  AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer.network(
           widget.movieList.previewUrl.toString(),
            betterPlayerConfiguration: BetterPlayerConfiguration(
              autoPlay: true,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("About : ",style: size16black,),
              ],
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                SizedBox(
                  width: 330,
                    child: Text(widget.movieList.longDescription.toString(),style: size13black87,)),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height:50,width:165,child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(blueAss)),
                  onPressed: (){}, child: Text("Buy : "+widget.movieList.currency +" : "+ widget.movieList.trackPrice,style: size16black,))),
              SizedBox(height:50,width:165,child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenS400)),
                  onPressed: (){}, child: Text("Rent : "+widget.movieList.currency +" : "+ widget.movieList.trackRentalPrice,style: size16black,))),

            ],
          ),
        ],),
      ),
    ));
  }
}
