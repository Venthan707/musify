import 'package:flutter/material.dart';
import 'package:musify/modal/colorAndtext.dart';

import 'Webpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Bgimage/bg.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: trans,
        body: Center(
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenS400)),
          onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Webpage()));
          },
          child: Text(
            "Click",
            style: size16black,
          ),
        )),
      ),
    ));
  }
}
