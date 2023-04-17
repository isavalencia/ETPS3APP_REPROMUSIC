import 'package:flutter/material.dart';

class PlayList extends StatefulWidget {
  const PlayList({super.key});

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF80CBC4),
              Color(0xFF80DEEA),
              Color(0xFF1DE9B6),
              Color(0xFF004D40),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Center(
            child: Text(
              "PLAYLIST",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          //title: new Text("PLAYLIST SONG'S"),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.grey[200]),
              onPressed: null,
              iconSize: 35,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10, left: 5),
              child: SingleChildScrollView(
                //child:GestureDetector(
                //onTap: () {
                //Navigator.pushNamed(context, "playlistPage");
                //},
                child: Column(
                  children: [
                    //for (int i = 1; i < 8; i++)
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 5),
                      //padding:EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF004D40),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "playlistPage");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://www.lahiguera.net/musicalia/artistas/bad_bunny/disco/12153/bad_bunny_un_verano_sin_ti-portada.jpg",
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Bad Bunny",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10 canciones",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white.withOpacity(0.6),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF004D40),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "top50");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://i.scdn.co/image/ab67706c0000da843ea62c5df2ff4a3b52ee0741",
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Top 50",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10 Canciones",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white.withOpacity(0.6),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF004D40),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "rock");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://static.vecteezy.com/system/resources/previews/002/972/281/original/symbol-of-rock-n-roll-concept-art-of-rock-music-in-monochrome-style-vector.jpg",
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rock",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10 Canciones",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white.withOpacity(0.6),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 5,
                      child: const Text(
                        '',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 5,
                      child: const Text(
                        '    PlayList recomendadas',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 5,
                      child: const Text(
                        '      Segun lo que has escuchado',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF004D40),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "folders");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://us.123rf.com/450wm/ozelenska/ozelenska1501/ozelenska150100021/35180664-m%C3%BAsica-salsa-y-la-ilustraci%C3%B3n-de-baile-con-instrumentos-musicales-palm%C3%A1ceas-etc-vector-elementos.jpg",
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                          const SizedBox(width: 25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "ACCESO A FOLDERS",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Provicional",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)
                                      .withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white.withOpacity(0.6),
                            size: 30,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.add,
                            color: Colors.white.withOpacity(0.6),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
