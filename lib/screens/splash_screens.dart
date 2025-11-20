import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ejericio1_sarathapa/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  // Creamos una pantalla que muestra imágenes repetidas en filas y columnas de forma responsive
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: 'assets/logoAnimado.gif',
        splashIconSize: 2000.0,
        centered: true,
        nextScreen: const PaginaInicio(),
        backgroundColor: Colors.black,
        duration: 3100,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  // Creamos una pantalla que muestra imágenes repetidas en filas y columnas de forma responsive
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logoAnimado.gif', width: 65.9),
            const Text(
              "True Splash Screen Tutorial",
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
