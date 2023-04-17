import 'package:flutter_application_music/paginas/Model/folder_model.dart';
import 'package:flutter/material.dart';

class Folders extends StatefulWidget {
  const Folders({super.key});

  @override
  State<Folders> createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
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
          ])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              "FOLDERS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 248, 245, 245),
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: Busqueda(),
                );
              },
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/allmusic");
              },
              child: GridView.builder(
                itemCount: Menu.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFF004D40),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/3767/3767084.png",
                          width: 100,
                        ),
                        Text(
                          Menu[index].nombre,
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          Menu[index].foto,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Busqueda extends SearchDelegate {
  List<String> TerminosBuscados = [
    'Mis favoritos',
    'Salsas',
    'Romanticas en ingles',
    'Rock',
    'Perreo'
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var terminos in TerminosBuscados) {
      if (terminos.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(terminos);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var Resultados = matchQuery[index];
        return ListTile(
          title: Text(Resultados),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var terminos in TerminosBuscados) {
      if (terminos.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(terminos);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var Resultados = matchQuery[index];
        return ListTile(
          title: Text(Resultados),
        );
      },
    );
  }
}
