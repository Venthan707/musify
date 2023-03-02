import 'package:flutter/material.dart';
import 'package:musify/Musify/imagepicker.dart';
import 'package:musify/modal/colorAndtext.dart';
import 'package:musify/musify/home.dart';


import 'Musicpage.dart';
class bottom extends StatefulWidget {
  const bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _selectedindex=0;
  final pages =[
    Homepage(),
    Musicpage(),
    imagepickerpage()
  ];

  void _itemtap(int index ){
    setState(() {
      _selectedindex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.grey.shade900,
          ],
        )
    ),
      child: Scaffold(backgroundColor: trans,
        body: pages[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: greenS400,
          backgroundColor: white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: greenS400,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined,color:greenS400,),label: 'Music'),
            BottomNavigationBarItem(icon: Icon(Icons.image_outlined,color:greenS400,),label: 'Image'),
          ],
          currentIndex: _selectedindex,
          onTap: _itemtap,
          showUnselectedLabels: true,
        ),
      ),
    ));
  }
}
