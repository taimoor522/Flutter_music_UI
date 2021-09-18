import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          trailing: IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {/*show menu model sheet*/},
          ),
          title: const Text(
            'Song Name',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Artist Name',
              style: TextStyle(color: Colors.white, fontSize: 12)),
        );
      },
      itemCount: 20,
    );
  }
}
