import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Screens/albums.dart';
import 'package:flutter_application_music/paginas/Screens/allmusic.dart';
import 'package:flutter_application_music/paginas/Screens/artist.dart';
import 'package:flutter_application_music/paginas/Screens/favoritas.dart';
import 'package:flutter_application_music/paginas/Screens/folders.dart';
import 'package:flutter_application_music/paginas/Screens/playlist.dart';
import 'package:flutter_application_music/paginas/Screens/splash_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    routes: <String, WidgetBuilder>{
      "/favorites": (context) => Favoritas(),
      "/albums": (context) => Albums(),
      "/playlist": (context) => PlayList(),
      "/folders": (context) => Folders(),
      "/artist": (context) => Artist(),
      "/allmusic": (context) => AllMusic(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp();
  }
}
