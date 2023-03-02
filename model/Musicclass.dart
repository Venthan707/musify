import 'package:flutter/material.dart';

class music {
  String image,
      wrapperType,
      kind,
      artistId,
      collectionId,
      artistName,
      collectionName,
      trackName,
      track;

  music(
      {required this.image,
      required this.wrapperType,
      required this.trackName,
      required this.artistName,
      required this.artistId,
      required this.kind,
      required this.collectionId,
      required this.collectionName,
      required this.track});
}

List<music> musicList = [
  music(
      image:
          "https://pbs.twimg.com/media/FjiFwNrVsAEF8LY?format=jpg&name=900x900",
      wrapperType: 'Thunivu Song',
      trackName: 'Chilla Chilla',
      artistName: 'Ghibran',
      artistId: '1',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song',
      track: "assets/audio/chilla.mp3"),
  music(
      image: "https://i.ytimg.com/vi/BySyDX3lnOY/maxresdefault.jpg",
      trackName: "Thee thalapathy ",
      artistName: "Thaman S",
      wrapperType: 'Varisu Song',
      artistId: '2',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/thee.mp3"),
  music(
      image:
          "https://lyricsraag.com/wp-content/uploads/2022/11/5bqqm4uvrkw.jpg",
      trackName: " Vaa Vaathi",
      artistName: "G.V.Prakash",
      wrapperType: 'Vaathi Song',
      artistId: '3',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/vaathi.mp3"),
  music(
      image:
          "https://is4-ssl.mzstatic.com/image/thumb/Music122/v4/9d/4c/aa/9d4caade-11ea-c49f-9742-81f4f15e68a2/8901854075812.png/1200x1200bf-60.jpg",
      trackName: "Ponninadhi",
      artistName: "ARR",
      wrapperType: 'Ps1 Song',
      artistId: '4',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/ponninadhi.mp3"),
  music(
      image: "https://i.ytimg.com/vi/55Kc0mIyeXM/maxresdefault.jpg?v=6375be37",
      trackName: "Chola Chola",
      artistName: "ARR",
      wrapperType: 'Ps1 Song',
      artistId: '4',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/cholla.mp3"),
  music(
      image: "https://pbs.twimg.com/media/FgxrEpqacAAMgLa.jpg:large",
      trackName: "Ranjithame",
      artistName: "Thaman S",
      wrapperType: 'Varisu Song',
      artistId: '2',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/ranjithame.mp3"),
  music(
      image:
          "https://images.indianexpress.com/2022/12/Kasethan-Kadavulada-1200.jpg",
      trackName: "Kasethan kadavulada ",
      artistName: "Ghibran",
      wrapperType: 'Thunivu Song',
      artistId: '1',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/kasu.mp3"),
  music(
      image:
          "https://www.pagalwoild.com/wp-content/uploads/2022/11/Ennai-Vittu-Uyir-Ponalum-mp3-image.jpg",
      trackName: "Ennai Vittu",
      artistName: "Yuvan",
      wrapperType: 'Love today Song',
      artistId: '5',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/eannai.mp3"),
  music(
      image:
          "https://a10.gaanacdn.com/gn_img/albums/VdNW0Mbo5e/NW0J0wkpKo/size_m.jpg",
      trackName: "pacha ilai",
      artistName: "Yuvan",
      wrapperType: 'Love today Song',
      artistId: '5',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/pachailai.mp3"),
  music(
      image: "https://pbs.twimg.com/media/Fb9e59BWIAE-5Xe.jpg",
      trackName: "Mallipoo",
      artistName: "ARR",
      wrapperType: 'VTK Song',
      artistId: '4',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/mallipoo.mp3"),
  music(
      image:
          "https://sund-images.sunnxt.com/148038/250x375_MeghamKarukatha_148038_e009f77b-0a31-4eb1-8967-068172dc0480.jpg",
      trackName: "Megham Karukatha",
      artistName: "Anirudh",
      wrapperType: 'Thiru.. Song',
      artistId: '6',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/megam.mp3"),
  music(
      image:
          "https://c.saavncdn.com/762/Thenmozhi-From-Thiruchitrambalam-Tamil-2022-20220730102535-500x500.jpg",
      trackName: "Thenmozhi",
      artistName: "Anirudh",
      wrapperType: 'Thiru.. Song',
      artistId: '6',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/thenmozhi.mp3"),
  music(
      image: "https://i.ytimg.com/vi/zMzJ0sYHxcY/maxresdefault.jpg",
      trackName: "Kanja Poovu",
      artistName: "Yuvan",
      wrapperType: 'viruman Song',
      artistId: '5',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/kanjapoo.mp3"),
  music(
      image: "https://i.ytimg.com/vi/BA3D02JNd0E/maxresdefault.jpg",
      trackName: "Saami Saami",
      artistName: "Devi Sri Prasad",
      wrapperType: 'Pushpa Song',
      artistId: '7',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/sami.mp3"),
  music(
      image: "https://i.ytimg.com/vi/zB8eBoPGLKc/maxresdefault.jpg",
      trackName: "Bloody Sweet",
      artistName: "Anirudh",
      wrapperType: 'Leo Song',
      artistId: '6',
      kind: 'song',
      collectionId: '001',
      collectionName: 'Tamil Song', track: "assets/audio/leo.mp3"),
];
