import 'package:ejercicios/screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ejercicios/icons/fontelico_icons.dart';

// Importamos las pantallas desde la carpeta screens
import 'drawer/drawer.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer ejercicios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const SplashScreen(),
    );
  }
}

// Pantalla de inicio con el Drawer
class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicios", style: GoogleFonts.emilysCandy()),
      ),
      drawer: const MyDrawer(),
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
