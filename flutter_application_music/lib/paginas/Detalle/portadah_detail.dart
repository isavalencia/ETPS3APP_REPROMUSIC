import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Screens/albums.dart';
import 'package:flutter_application_music/paginas/Detalle/portadas.dart';

class PortaDetailhori extends StatelessWidget {
  const PortaDetailhori({super.key, required this.port1});

  final Porta3D port1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xFF80CBC4),
            Color(0xFF80DEEA),
            Color(0xFF1DE9B6),
            Color(0xFF004D40),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getappBat(),
        body: getBody(),
      ),
    );
  }

  PreferredSizeWidget getappBat() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xFF004D40),
      ),
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          'Album',
          style: TextStyle(
            color: Color(0xFF004D40),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => null,
        ),
      ],
    );
  }

  Widget getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Align(
          child: SizedBox(
            height: 150,
            width: 150,
            child: Hero(
              tag: port1.titulo,
              child: Porta3dwidget(
                port1: port1,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          port1.autor,
          style: TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          port1.titulo,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
