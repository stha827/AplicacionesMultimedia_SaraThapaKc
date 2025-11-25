import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../drawer/drawer.dart';

// 3 Textos con distintas fuentes y distintos modos de desbordamiento
class TextosFilas extends StatelessWidget {
  const TextosFilas({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Textos con diferentes fuentes")),
      drawer: const MyDrawer(),
      body: Column(
        children: <Widget>[
          // Esta se trata de una fila normal con una fuente por defecto
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 203, 184, 255),
              child: Text(
                "Chase Atlantic es una banda australiana formada por los hermanos Mitchel y Clinton Cave junto a Christian Anthony. Su estilo mezcla R&B, pop alternativo y sonidos electrónicos con influencias del hip-hop.",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),

          // Importamos una fuente de Google Fonts y controlamos el tamaño del texto con AutoSizeText
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 255, 175, 219),
              child: AutoSizeText(
                "The Weeknd, cuyo nombre real es Abel Tesfaye, es un cantante canadiense que revolucionó el R&B moderno. Su música combina pop, soul y electrónica, con letras sobre amor, fama y excesos.",
                style: GoogleFonts.tauri(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          // Añadimos una fuente del sistema y controlamos el tamaño del texto con overflow fade
          Expanded(
            child: Container(
              color: Colors.blue[100],
              padding: EdgeInsets.all(10),
              child: Text(
                "The Neighbourhood es una banda estadounidense formada en California en 2011. Su sonido combina rock alternativo, pop y R&B con una estética en blanco y negro muy característica.",
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  color: Colors.black,
                ),
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
