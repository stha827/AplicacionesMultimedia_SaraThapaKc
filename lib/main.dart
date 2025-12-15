import 'package:ejercicios/screens/splash_screens.dart';
import 'package:flutter/material.dart';

// Importamos las pantallas desde la carpeta screens

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
