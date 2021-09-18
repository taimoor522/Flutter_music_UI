import 'dart:io';

import 'package:flutter/material.dart';
import 'package:music/constant.dart';
import 'Views/all_song_screen.dart';
import 'Views/favourite_screen.dart';
import 'Views/playlist_screen.dart';
import 'Widgets/now_playing.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kMyPurple,
          title: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 20,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 15),
            unselectedLabelColor: kMyPink,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.audiotrack,
                  size: 25,
                ),
                text: 'Songs',
                iconMargin: EdgeInsets.only(top: 10),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  size: 25,
                ),
                text: 'Favorites',
                iconMargin: EdgeInsets.only(top: 10),
              ),
              Tab(
                icon: Icon(
                  Icons.queue_music,
                  size: 25,
                ),
                text: 'Playlists',
                iconMargin: EdgeInsets.only(top: 10),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                AllSongScreen(),
                FavouriteScreen(),
                PlaylistScreen(),
              ],
            ),
            NowPlaying(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    setStatusBar();
  }

  Future<void> setStatusBar() async {
    await FlutterStatusbarcolor.setStatusBarColor(kMyPurple);
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }
}
