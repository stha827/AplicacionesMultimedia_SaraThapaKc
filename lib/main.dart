import 'package:ejercicios/screens/splash_screens.dart';
import 'package:flutter/material.dart';

// Importamos las pantallas desde la carpeta screens
import 'screens/drawer.dart';

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
      theme: ThemeData(primarySwatch: Colors.indigo),
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
      appBar: AppBar(title: const Text("Drawer ejercicios")),
      drawer: const MyDrawer(),
      body: const Center(child: Text("Abre el menú lateral para navegar")),
      backgroundColor: const Color.fromARGB(255, 252, 217, 255),
    );
  }
}
