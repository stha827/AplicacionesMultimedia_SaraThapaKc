//Pantalla principal que va a llamar a cada subpantalla
import 'package:ejercicios/screens/examen/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainExamen extends StatelessWidget {
  const MainExamen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen Flutter',
      home: const Examen(),
    );
  }
}
