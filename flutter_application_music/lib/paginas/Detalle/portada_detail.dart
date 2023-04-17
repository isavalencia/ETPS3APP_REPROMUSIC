import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Detalle/portadas.dart';
import 'package:flutter_application_music/paginas/Screens/albums.dart';

class PortaDetail extends StatelessWidget {
  const PortaDetail({super.key, required this.port});

  final Porta3DEscu port;

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
              tag: port.titulo,
              child: Porta3dwidget1(
                port: port,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          port.autor,
          style: TextStyle(
              color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          port.titulo,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
