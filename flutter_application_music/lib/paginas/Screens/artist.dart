import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("ARTIST SONG'S"),
      ),
      body: Center(
        child: Text("ARTIS SONG'S"),
      ),
    );
  }
}
