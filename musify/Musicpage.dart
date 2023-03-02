import 'package:flutter/material.dart';
import 'package:musify/Musify/bottom.dart';
import 'package:musify/Musify/musicdetailscreen.dart';
import 'package:musify/modal/Musicclass.dart';

import '../modal/colorAndtext.dart';

class Musicpage extends StatelessWidget {
  const Musicpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          color: black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => bottom()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 25),
        ),
        title: Text(
          "Music List",
          style: size25black,
        ),
        actions: [
          IconButton(
            color: black, onPressed: () {
          }, icon: Icon( Icons.search,
            size: 25,),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:629,
              width: double.infinity,
              child: ListView.builder(
                itemCount: musicList.length,
                itemBuilder: (BuildContext context, int index) {
                  music Music = musicList[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10,top: 6),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>musicdetailscreen(Music)));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),color: Colors.grey.shade300
                        ),
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(Music.image),
                              ),
                            ),
                            SizedBox(width: 7,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Music.trackName,style: size16black,),
                                Text(Music.artistName,style: size16black12,)
                              ],
                            ),
                          ],),
                            Column(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 40,
                                  child: FloatingActionButton(
                                    elevation: 10,
                                    backgroundColor: greenS400,
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>musicdetailscreen(Music)));
                                    },child: Icon(Icons.play_arrow_outlined,color: black,size: 20,),),
                                ),
                              ],
                            )
                        ],),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

