import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pantalla2.dart';

//Clase de la Primera Pantalla: Modo oscuro y claro
class Pantalla1 extends StatefulWidget {
  const Pantalla1({super.key});

  @override
  Pantalla1State createState() => Pantalla1State();
}

//Inicio que indica si esta en modo oscuro o claro
class Pantalla1State extends State<Pantalla1> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    final theme = isDarkMode ? _darkTheme : _lightTheme;
    return Theme(
      data: theme,
      child: HomePantalla1(
        isDarkMode: isDarkMode,
        toggleTheme: (value) {
          setState(() {
            isDarkMode = value;
          });
        },
      ),
    );
  }
}

// TEMAS
// Tema claro colores
final _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 207, 226, 255),
  ),
  colorScheme: const ColorScheme.light(
    surface: Color.fromARGB(255, 207, 226, 255),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
  ),
);

// Tema oscuro colores
final _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromARGB(255, 255, 255, 255),
  scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 0, 13, 32),
  ),
  colorScheme: const ColorScheme.dark(surface: Color.fromARGB(255, 0, 0, 0)),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color.fromARGB(255, 255, 248, 224)),
  ),
);

// Clase con nuestra pantalla
class HomePantalla1 extends StatelessWidget {
  //Variables y constantes
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  const HomePantalla1({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cabecera
      appBar: AppBar(
        title: Text("Sara 2 DAM", style: GoogleFonts.antonio()),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => toggleTheme(!isDarkMode),
          ),
        ],
      ),
      //Cuerpo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Texto principal
            Text('Sara Thapa Kc', style: GoogleFonts.anton(fontSize: 30)),
            SizedBox(height: 15),

            //Imagen
            Image.asset("assets/examen/pantalla1/pajaro.jpg"),
            SizedBox(height: 15),

            //Botón que nos llevará a la segunda pantalla
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 60),
                backgroundColor: Theme.of(context).colorScheme.surface,
                shadowColor: Theme.of(context).primaryColor,
                elevation: 5,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Pantalla2()),
                );
              },
              child: Text(
                "Pantalla 2",
                style: GoogleFonts.anton(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
