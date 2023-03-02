import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:musify/Musify/bottom.dart';

import '../modal/colorAndtext.dart';

class imagepickerpage extends StatefulWidget {
  @override
  _imagepickerpageState createState() => _imagepickerpageState();
}

class _imagepickerpageState extends State<imagepickerpage> {
  List<File> _imageFiles = [];

  final picker = ImagePicker();

  Future getImages() async {
    for (int i = 0; i < 6 - _imageFiles.length; i++) {
      final pickedFile = await picker.pickMultiImage(
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 50,
      );

      setState(() {
        if (pickedFile != null) {
          _imageFiles.addAll(
              pickedFile.map((pickedFile) => File(pickedFile.path)));
        } else {
          print('No image selected.');
        }
      });
    }
  }

  Future getCameraImages() async {
    for (int i = 0; i < 6 - _imageFiles.length; i++) {
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 500,
        maxHeight: 500,
        imageQuality: 50,
      );

      setState(() {
        if (pickedFile != null) {
          _imageFiles.add(File(pickedFile.path));
        } else {
          print('No image selected.');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          color: black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
          },
          icon: Icon(Icons.arrow_back_ios, size: 25),
        ),
        title: Text(
          "Image Picker",
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
      body: Column(
        children: [
          Container(
            height: 400,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount:_imageFiles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: .5
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.file(_imageFiles[index],fit: BoxFit.fill,),
                );
              },
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenS400)),
                child: Text('Gallery'),
                onPressed: _imageFiles.length >= 6 ? null : getImages,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(greenS400)),
                child: Text('Camera'),
                onPressed: _imageFiles.length >= 6 ? null : getCameraImages,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
