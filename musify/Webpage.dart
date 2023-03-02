import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:musify/Musify/moviepreviwepage.dart';
import '../modal/Apiclass.dart';
import '../modal/colorAndtext.dart';

class Webpage extends StatefulWidget {
  const Webpage({Key? key}) : super(key: key);

  @override
  State<Webpage> createState() => _WebpageState();
}

class _WebpageState extends State<Webpage> {
  List<movie> movieList = [];

  @override
  void initstate() {
    super.initState();
    print('init state');
  }

  Future<List<movie>> fetcresult() async {
    var resp =
        await http.get(Uri.parse('https://itunes.apple.com/search?term=John'));
    return (json.decode(resp.body)['results'] as List)
        .map((m) => movie.forMap(m))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            greenS400,
            black
          ])),
      child: Scaffold(
        backgroundColor: trans,
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
            "Movie List",
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
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white70,
            padding: const EdgeInsets.all(8),
            child: FutureBuilder<List<movie>>(
                future: fetcresult(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<movie> movieList = snapshot.data as List<movie>;
                    return ListView.builder(
                        itemCount: movieList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 200,
                                        width: 100,
                                        child: Image.network(
                                          movieList[index]
                                              .artworkUrl100
                                              .toString(),
                                          fit: BoxFit.fill,
                                        )),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Movie name ",
                                                  style: size13black87,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index]
                                                          .trackName,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Actor ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 40,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index]
                                                          .artistName,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Genre ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 38,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index]
                                                          .primaryGenreName,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Country ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 26,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index].country,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "releaseDate ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index]
                                                          .releaseDate,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "One line ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 25,
                                                ),
                                                Text(
                                                  ": ",
                                                  style: size13black87,
                                                ),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                SizedBox(
                                                    width: 126,
                                                    child: Text(
                                                      movieList[index]
                                                          .shortDescription,
                                                      style: size13black87,
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                    width: 200,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    greenS400)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      moviepreviwepage(
                                                          movieList[index])));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Watch Now",
                                              style: size16black,
                                            ),
                                            Icon(
                                              Icons.fast_forward_sharp,
                                              size: 25,
                                              color: black,
                                            )
                                          ],
                                        ))),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  color: black,
                                )
                              ],
                            ),
                          );
                        });
                  }
                  if (snapshot.hasError) {
                    print(snapshot.error.toString());
                    return Text('error');
                  }
                  return Center(
                      child: Container(
                          height: 126,
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          )));
                })),
      ),
    ));
  }
}
