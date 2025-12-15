import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Clase de la Tercera Pantalla: Juego
class Pantalla3 extends StatefulWidget {
  const Pantalla3({super.key});
  @override
  MiPantalla3 createState() => MiPantalla3();
}

//Clase con la pantalla
class MiPantalla3 extends State<Pantalla3> {
  //Variables
  final random = Random();
  late int numeroAleatorio = (random.nextInt(6)) + 1;
  late int suma = 0;
  late int maximo = 51;
  late String objetivo = "A definir...";

  //METODOS
  //Meotodo para poner a 0
  void reset() {
    setState(() {
      suma = 0;
      objetivo = "A definir...";
    });
  }

  //Metodo para sumar valores
  void sumarValores() {
    setState(() {
      numeroAleatorio = (random.nextInt(6)) + 1;
      if (suma > maximo) {
        objetivo = "No superado :(, reinicia para volver a jugar";
      } else if (suma == maximo) {
        objetivo = "Superado :), reinicia para volver a jugar";
      } else {
        suma += numeroAleatorio;
      }
    });
  }

  //Pantalla
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CABECERA
      appBar: AppBar(
        title: Text("Sara 2 DAM", style: GoogleFonts.antonio()),
        backgroundColor: const Color.fromARGB(255, 207, 226, 255),
      ),
      //CUERPO
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Textos informativos
            Text(
              'Vamos a sumar hasta 51!!',
              style: GoogleFonts.anton(fontSize: 30),
            ),
            SizedBox(height: 10),

            Text(
              "Suma obtenida = $suma",
              style: GoogleFonts.antonio(fontSize: 16),
            ),
            SizedBox(height: 30),

            //BOTONES
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    sumarValores();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(135, 60),
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: const Color.fromARGB(255, 207, 226, 255),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    "Sumar",
                    style: GoogleFonts.bangers(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(width: 30),

                //Boton para resetear
                ElevatedButton(
                  onPressed: () {
                    reset();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(135, 60),
                    shadowColor: const Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: const Color.fromARGB(255, 207, 226, 255),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    "Reset",
                    style: GoogleFonts.bangers(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            //Texto informativo
            Text(
              "Objetivo: $objetivo",
              style: GoogleFonts.antonio(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
