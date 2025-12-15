import 'package:ejercicios/screens/examen/screens/home_screen.dart';
import 'package:flutter/material.dart';

//Clase Main que nos mostrará la pantalla principal
class MainExamen extends StatelessWidget {
  const MainExamen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const Examen());
  }
}
