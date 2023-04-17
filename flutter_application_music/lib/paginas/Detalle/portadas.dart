import 'package:flutter/material.dart';

class Porta3D {
  const Porta3D(
      {required this.titulo, required this.autor, required this.imagenes});

  final String titulo;
  final String autor;
  final String imagenes;
}

class Porta3DEscu {
  const Porta3DEscu(
      {required this.titulo, required this.autor, required this.imagenes});

  final String titulo;
  final String autor;
  final String imagenes;
}

const _imagesport = 'assest/img';

final portadaList = [
  Porta3D(
      autor: 'Slipknot',
      titulo: 'All hope is gone',
      imagenes: '$_imagesport/slipknot.png'),
  Porta3D(
      autor: 'Bob Marley',
      titulo: 'The Wailers',
      imagenes: '$_imagesport/bob.png'),
  Porta3D(
      autor: 'Scorpions',
      titulo: 'Crazy World',
      imagenes: '$_imagesport/scor.png'),
  Porta3D(
      autor: 'Rammstein', titulo: 'Mutter', imagenes: '$_imagesport/ramm.png'),
  Porta3D(
      autor: 'System',
      titulo: 'Hypnotize',
      imagenes: '$_imagesport/system.png'),
  Porta3D(
      autor: 'Marilyn Manson',
      titulo: 'Mechanical Animals',
      imagenes: '$_imagesport/marilyn.png'),
  Porta3D(
      autor: 'Likin Park',
      titulo: 'Meteora',
      imagenes: '$_imagesport/likin.png'),
  Porta3D(
      autor: 'Zona Ganjah',
      titulo: 'La Busqueda',
      imagenes: '$_imagesport/Zona.png'),
  Porta3D(
      autor: 'Green Day', titulo: 'Dookie', imagenes: '$_imagesport/green.png'),
  Porta3D(
      autor: 'Pink Floyd',
      titulo: 'The Wail',
      imagenes: '$_imagesport/floyd.png'),
  Porta3D(
      autor: 'Angeles Azules',
      titulo: 'Esto si es Cumbia',
      imagenes: '$_imagesport/angeles.png'),
  Porta3D(
      autor: 'Evanecence',
      titulo: 'Fallen',
      imagenes: '$_imagesport/evanecence.png'),
  Porta3D(
      autor: 'Calibre 50',
      titulo: 'Vamos Bien',
      imagenes: '$_imagesport/Calibre.png'),
  Porta3D(
      autor: 'Mana',
      titulo: 'Sueños Liquidos',
      imagenes: '$_imagesport/mana.png'),
  Porta3D(
      autor: 'Los Bukis',
      titulo: 'Quiereme',
      imagenes: '$_imagesport/bukis.png'),
];

final portadaEscuchadas = [
  Porta3DEscu(
      autor: 'SuicideboyS',
      titulo: 'I Want to Die in New Orleans',
      imagenes: '$_imagesport/suicide.png'),
  Porta3DEscu(
      autor: 'Trakalosa',
      titulo: 'Sierreño',
      imagenes: '$_imagesport/trakalosa.png'),
  Porta3DEscu(
      autor: 'Doja Cat', titulo: 'Hot Pink', imagenes: '$_imagesport/doja.png'),
  Porta3DEscu(
      autor: 'Rammstein', titulo: 'Mutter', imagenes: '$_imagesport/ramm.png'),
  Porta3DEscu(
      autor: 'System',
      titulo: 'Hypnotize',
      imagenes: '$_imagesport/system.png'),
  Porta3DEscu(
      autor: 'Marilyn Manson',
      titulo: 'Mechanical Animals',
      imagenes: '$_imagesport/marilyn.png'),
  Porta3DEscu(
      autor: 'Slipknot',
      titulo: 'All hope is gone',
      imagenes: '$_imagesport/slipknot.png'),
];
