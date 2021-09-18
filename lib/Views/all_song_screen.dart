import 'package:flutter/material.dart';
import 'package:music/Widgets/songs_list.dart';
import 'package:music/constant.dart';

class AllSongScreen extends StatefulWidget {
  @override
  _AllSongScreenState createState() => _AllSongScreenState();
}

class _AllSongScreenState extends State<AllSongScreen> {
  bool _loading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kMyPurple, kMyPink],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: _loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : SongsList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    simulate();
  }

  simulate() async {
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      _loading = false;
    });
  }
}
