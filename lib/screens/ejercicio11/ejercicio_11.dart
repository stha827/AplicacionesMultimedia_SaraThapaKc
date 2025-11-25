import 'screens_ejercicio11/fotos.dart';
import 'screens_ejercicio11/destacadas.dart';
import 'package:flutter/material.dart';
import 'screens_ejercicio11/header.dart';
import 'screens_ejercicio11/botonesFalsos.dart';
import 'screens_ejercicio11/header_fotos.dart';

//Pantalla principal que va a llamar a cada subpantalla
class PaginaInstagram extends StatelessWidget {
  const PaginaInstagram({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "maxelperro",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Header(),
          BotonesFalsos(),
          Destacadas(),
          HeaderFotos(),
          Fotos(),
        ],
      ),
    );
  }
}
