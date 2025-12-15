import 'package:ejercicios/drawer/drawer.dart';
import 'package:ejercicios/screens/examen/screens/pantalla1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//PANTALLA PRINCIPAL
class Examen extends StatelessWidget {
  const Examen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sara 2 DAM", style: GoogleFonts.anton())),
      drawer: const MyDrawer(),
      body: _ExamenHome(),
    );
  }
}

//Clase con nuestra pantalla
class _ExamenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 226, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Boton que nos llevara a la pantalla 1
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 70),
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                elevation: 10,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Pantalla1()),
                );
              },
              child: Text(
                "Pantalla 1",
                style: GoogleFonts.anton(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
