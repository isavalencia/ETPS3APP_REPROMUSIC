import 'package:flutter/material.dart';

class Favoritas extends StatefulWidget {
  const Favoritas({super.key});

  @override
  State<Favoritas> createState() => _FavoritasState();
}

class _FavoritasState extends State<Favoritas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("FAVORITES SONG'S"),
      ),
      body: Center(
        child: Text("FAVORITES SONG'S"),
      ),
    );
  }
}
