import 'package:flutter/material.dart';
import 'package:music/Widgets/songs_list.dart';

import '../constant.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
    await Future.delayed(Duration(milliseconds: 400));

    setState(() {
      _loading = false;
    });
  }
}
