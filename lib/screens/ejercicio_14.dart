// dark_theme.dart
import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  DarkThemeState createState() => DarkThemeState();
}

class DarkThemeState extends State<DarkTheme> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final theme = isDarkMode ? _darkTheme : _lightTheme;

    return Theme(
      data: theme,
      child: HomeScreen(
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

// Tema claro local
final _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: const Color.fromARGB(255, 216, 200, 168),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(0, 0, 0, 0),
    foregroundColor: Color.fromARGB(255, 0, 0, 0),
  ),
  colorScheme: const ColorScheme.light(surface: Color.fromARGB(255, 0, 0, 0)),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    titleLarge: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
  ),
);

// Tema oscuro local
final _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color.fromARGB(255, 255, 255, 255),
  scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 48),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(0, 0, 150, 135),
    foregroundColor: Color.fromARGB(255, 255, 255, 255),
  ),
  colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(255, 255, 248, 224),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Color.fromARGB(255, 255, 248, 224)),
    titleLarge: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
  ),
);

class HomeScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;

  const HomeScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => toggleTheme(!isDarkMode),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('WANTED', style: GoogleFonts.rye(fontSize: 50)),
            const SizedBox(height: 5),
            Container(
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.only(top: 9, left: 30),
                child: Text(
                  "CRIMINAL 01   |    ALTO RIESGO    |    14 SEP 2025",
                  style: GoogleFonts.rye(
                    fontSize: 14,
                    textStyle: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            Image(
              image: AssetImage("assets/screens14/foto.jpg"),
              width: MediaQuery.of(context).size.width * 0.60,
            ),
            const SizedBox(height: 40),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.only(top: 9, left: 20),
                child: Text(
                  "\$1.234,56 RECOMPENSA",
                  style: GoogleFonts.rye(
                    fontSize: 25,
                    textStyle: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            Text('MAXIMILIANO GALLARDO', style: GoogleFonts.rye(fontSize: 20)),
            TextButton(
              onPressed: () {
                mostrarAlertDialog(context);
              },
              child: const Text('Más información'),
            ),
          ],
        ),
      ),
    );
  }

  void mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Información'),
          content: const SingleChildScrollView(
            child: Text(
              'Este es un mensaje de alerta',
              style: TextStyle(fontSize: 60),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
              },
              child: const Text('Okay'),
            ),
          ],
        );
      },
    );
  }
}
