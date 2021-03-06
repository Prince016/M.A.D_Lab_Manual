import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:music_app/config/constants/app_constants.dart';
// import 'package:music_app/models/song.dart';
// import 'package:music_app/screens/player.dart';
// import 'package:music_app/utils/services/api_client.dart';
import 'package:shake/shake.dart';
import 'package:songs/screens/player.dart';

import '../config/constants/app_constants.dart';
import '../models/song.dart';
import '../utils/services/api_client.dart';

class ListOfSongs extends StatefulWidget {
  const ListOfSongs({Key? key}) : super(key: key);

  @override
  _ListOfSongsState createState() => _ListOfSongsState();
}

class _ListOfSongsState extends State<ListOfSongs> {
  AudioPlayer audioPlayer = AudioPlayer();
  int currentSongIndex = 0;
  List<Song> songs = [];
  dynamic error;
  ApiClient client = ApiClient();


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //detector.stopListening();
  }

  late ShakeDetector detector;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    detector = ShakeDetector.autoStart(onPhoneShake: () {
      // Do stuff on phone shake
      print("Shake Detect.....................");
    });

    client.getSongs(getSongList, getSongError);
    // Future.delayed(Duration(seconds: 5), () {
    //   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Player()));
    // });
  }

  getSongList(List<Song> songs) {
    this.songs = songs;
    setState(() {});
  }

  getSongError(dynamic error) {
    this.error = error;
    setState(() {});
  }

  Center _showLoading() {
    return Center(child: CircularProgressIndicator());
  }

  _showPlayer(Song song) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => Player(song)));
  }

  ListView _printSong() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, int index) {
        return ListTile(
          onTap: () {
            _showPlayer(songs[index]);
          },
          leading: Image.network(songs[index].image),
          title: Text(songs[index].trackName),
          subtitle: Text(songs[index].artistName),
          trailing: IconButton(
              onPressed: () async {
                print("Song Play ${songs[index].audio}");
                currentSongIndex = index;
                print("Now the current song index $currentSongIndex");
                int result = await audioPlayer.play(songs[index].audio);
                if (result == AppConstants.SUCCESS) {
                } else {}
              },
              icon: Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.redAccent,
              )),
        );
      },
      itemCount: songs.length,
    );
  }

  TextEditingController searchCtrl = TextEditingController();

  _searchSongs() {
    String searchValueTxt = searchCtrl.text;
    client.getSongs(getSongList, getSongError, searchValue: searchValueTxt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100),
      //   child: AppBar(
      //     //toolbarHeight: 100,
      //     title: Container(
      //       margin: EdgeInsets.all(20),
      //       decoration: BoxDecoration(
      //           color: Colors.white, borderRadius: BorderRadius.circular(10)),
      //       //color: Colors.white,
      //       child: TextField(
      //         decoration: InputDecoration(
      //             border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(10)),
      //             suffixIcon: Icon(
      //               Icons.search,
      //             ),
      //             labelText: 'Search',
      //             hintText: 'Type to Search'),
      //       ),
      //     ),
      //     //title: Text('Songs'),
      //   ),
      // ),
      appBar: AppBar(
        toolbarHeight: 80,
        title: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          //color: Colors.white,
          child: TextField(
            controller: searchCtrl,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    //print("U Click on Search....");
                    _searchSongs();
                  },
                ),
                labelText: 'Search',
                hintText: 'Type to Search'),
          ),
        ),
        //title: Text('Songs'),
      ),
      body:
          Container(child: (songs.length == 0) ? _showLoading() : _printSong()),
    );
  }
}
