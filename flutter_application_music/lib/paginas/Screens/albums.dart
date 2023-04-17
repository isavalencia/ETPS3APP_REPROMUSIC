import 'package:flutter/material.dart';
import 'package:flutter_application_music/paginas/Detalle/portada_detail.dart';
import 'package:flutter_application_music/paginas/Detalle/portadah_detail.dart';
import 'package:flutter_application_music/paginas/Detalle/portadas.dart';

class Albums extends StatefulWidget {
  const Albums({super.key});

  @override
  State<Albums> createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
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
        appBar: getAppBar(),
        body: getBoddy(),
      ),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          'ALBUMES',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      /*leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => Navigator,
      ),*/
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => null,
        ),
      ],
    );
  }

  Widget getBoddy() {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Text(
          "Albumes escuchados recientemente",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        Expanded(
          flex: 2,
          child: PortaBody(),
        ),
        Expanded(
          flex: 2,
          child: portadasHorizon(),
        ),
      ],
    );
  }
}

//para horizontales
class portadasHorizon extends StatelessWidget {
  const portadasHorizon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 185, top: 5),
          child: Text(
            "Albumes recomendados",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),

//para canciones horizontales
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: portadaList.length,
              itemBuilder: (context, index) {
                final port1 = portadaList[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Porta3dwidget(
                        port1: port1,
                      ),
                      Text(
                        port1.titulo,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}

//para las canciones horizontales
class Porta3dwidget extends StatelessWidget {
  const Porta3dwidget({super.key, required this.port1});

  final Porta3D port1;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GestureDetector(
          child: Image.asset(
            port1.imagenes,
            width: 220,
            height: 200,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, _) => FadeTransition(
                  opacity: animation,
                  child: PortaDetailhori(
                    port1: port1,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------------------------
//para las verticales
class Porta3dwidget1 extends StatelessWidget {
  const Porta3dwidget1({super.key, required this.port});

  final Porta3DEscu port;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          port.imagenes,
          width: 220,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// para el cuerpo de las verticales
class PortaBody extends StatefulWidget {
  const PortaBody({super.key});

  @override
  State<PortaBody> createState() => _PortaBodyState();
}

class _PortaBodyState extends State<PortaBody>
    with SingleTickerProviderStateMixin {
  bool _selectedMode = false;
  late AnimationController _animationControllerSeleccion;
  late int _Selectedindex;

  Future<void> _onportSelected(Porta3DEscu port, int index) async {
    setState(() {
      _Selectedindex = index;
    });
    final duration = Duration(milliseconds: 750);

    await Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: duration,
        reverseTransitionDuration: duration,
        pageBuilder: (context, animation, _) => FadeTransition(
          opacity: animation,
          child: PortaDetail(
            port: port,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _animationControllerSeleccion = AnimationController(
        vsync: this,
        lowerBound: 0.15,
        upperBound: 0.5,
        duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  void dispose() {
    _animationControllerSeleccion.dispose();
    super.dispose();
  }

  double _value = 0.20;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return AnimatedBuilder(
          animation: _animationControllerSeleccion,
          builder: (context, snapshot) {
            final valueselec = _animationControllerSeleccion.value;
            return GestureDetector(
              onTap: () {
                if (!_selectedMode) {
                  _animationControllerSeleccion.forward().whenComplete(() {
                    setState(() {
                      _selectedMode = true;
                    });
                  });
                } else {
                  _animationControllerSeleccion.reverse().whenComplete(() {
                    setState(() {
                      _selectedMode = false;
                    });
                  });
                }
              },
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(valueselec),
                child: Container(
                  height: constraints.minHeight,
                  width: constraints.maxWidth * 0.55,
                  color: Colors.transparent,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: List.generate(
                      5,
                      (index) => Port3DItem(
                        height: constraints.maxHeight / 2,
                        port: portadaEscuchadas[index],
                        percent: _value,
                        depth: index,
                        onPortSelected: (port) {
                          _onportSelected(port, index);
                        },
                      ),
                    ).reversed.toList(),
                  ),
                ),
              ),
            );
          });
    });
  }
}

class Port3DItem extends StatelessWidget {
  const Port3DItem(
      {super.key,
      required this.port,
      required this.height,
      required this.percent,
      required this.depth,
      required this.onPortSelected});

  final Porta3DEscu port;
  final double height;
  final double percent;
  final int depth;
  final ValueChanged<Porta3DEscu> onPortSelected;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height + -depth * height / 2.0 * percent - height / 3.0,
      left: 0,
      right: 0,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..translate(0.0, 0.0, depth * 20.0),
        child: GestureDetector(
          child: InkWell(
            onTap: () {
              onPortSelected(port);
            },
            child: SizedBox(
              height: 210,
              child: Porta3dwidget1(port: port),
            ),
          ),
        ),
      ),
    );
  }
}
