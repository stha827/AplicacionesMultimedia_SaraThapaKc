import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ejercicios/icons/fontelico_icons.dart';
import '../drawer/drawer.dart';

// Pantalla de inicio con el Drawer
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cabecera
      appBar: AppBar(
        title: Text("Ejercicios", style: GoogleFonts.emilysCandy()),
      ),
      drawer: const MyDrawer(),
      //Estilo de degradado para el cuerpo
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 255, 189, 249),
              Color.fromARGB(255, 255, 255, 255),
            ],
            stops: [0.3, 0.75],
          ),
        ),
        child: Contenido(),
      ),
    );
  }
}

//Cuerpo
class Contenido extends StatelessWidget {
  const Contenido({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bienvenida/o ",
                style: GoogleFonts.emilysCandy(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(FontelicoIcons.emo_tongue),
            ],
          ),
          Text(
            "Abre el menú lateral para navegar",
            style: GoogleFonts.emilysCandy(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
