import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Screens/configuracion.dart';
import 'package:flutter_application_music/paginas/Screens/home_screen.dart';
import 'package:flutter_application_music/paginas/Screens/playlist.dart';
import 'package:flutter_application_music/paginas/Screens/profile.dart';
import 'package:iconly/iconly.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int paginaIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
            Color(0xFF80CBC4),
            Color.fromARGB(255, 19, 122, 97),
            Color(0xFF80DEEA),
            Color.fromARGB(255, 7, 70, 59),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: getBody(),
        bottomNavigationBar: getFooter(),
      ),
    );
  }

//widget de body
  Widget getBody() {
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
      child: IndexedStack(
        index: paginaIndex,
        children: [
          HomeScreen(),
          PlayList(),
          Configuraciones(),
          Profile(),
        ],
      ),
    );
  }

  //widget de bottomNavigationBar:
  Widget getFooter() {
    List iconosItems = [
      IconlyLight.home,
      IconlyLight.star,
      IconlyLight.setting,
      IconlyLight.user,
    ];
    List textoItems = [
      "Home",
      "PlayList",
      "Config",
      "Me",
    ];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 81, 158, 150),
              Color.fromARGB(255, 23, 161, 127),
              Color.fromARGB(255, 114, 191, 201),
              Color(0xFF004D40),
            ]),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(45), topLeft: Radius.circular(40)),
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.8)),
        ],
      ),
      child: Container(
        height: 90,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(textoItems.length, (index) {
                  return GestureDetector(
                    //Genra un estado al tocar la partanlla
                    onTap: () {
                      setState(() {
                        paginaIndex = index;
                      });
                    },

                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(45),
                              topLeft: Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.teal.withOpacity(0.3)),
                          ],
                        ),
                        child: Icon(
                          iconosItems[index],
                          color: paginaIndex == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5),
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: paginaIndex == index
                                ? Colors.white
                                : Colors.white,
                          )),
                    ]),
                  );
                })),
          ),
        ),
      ),
    );
  }
}
