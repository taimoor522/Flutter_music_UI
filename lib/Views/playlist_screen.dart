import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music/Widgets/blur_image.dart';
import 'package:music/constant.dart';

class PlaylistScreen extends StatefulWidget {
  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kMyPurple, kMyPink])),
        child: Stack(
          children: [
            ListView(
              children: [
                ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Playlist Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: const Text(
                    '12 Songs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 90,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  size: 35,
                  color: kMyPink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
