import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'dart:async';
import '../drawer/drawer.dart';

// Pantalla de un juego con imagenes aleatorias en posiciones aleatorias junto con un contador de clicks de la imagen
void main() {
  runApp(const ImagenesAleatorias());
}

class ImagenesAleatorias extends StatefulWidget {
  const ImagenesAleatorias({super.key});

  @override
  State<ImagenesAleatorias> createState() => _RandomColors();
}

class _RandomColors extends State<ImagenesAleatorias> {
  //VARIABLES
  late double randomX;
  late double randomY;
  int points = 0;
  late Image randomImage;
  late Timer _timer;
  var imagenes = [
    './assets/screens13/img1.jpg',
    './assets/screens13/img2.jpg',
    './assets/screens13/img3.jpg',
    './assets/screens13/img4.jpg',
    './assets/screens13/img5.jpg',
  ];

  // Obtenemos una imagen random del array
  void getRandomImage() {
    Random random = Random();
    int randomNumber = random.nextInt(imagenes.length);
    randomImage = Image.asset(imagenes[randomNumber]);
  }

  //Generamos una posición aleatoria
  void generateRandomPosition(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxWidth = size.width - 150;
    final maxHeight = size.height - 250;

    randomX = Random().nextDouble() * maxWidth;
    randomY = Random().nextDouble() * maxHeight;
  }

  //Funcion para resetear a 0 y parar el juego
  _reset() {
    setState(() {
      points = 0;
    });
    _timer.cancel();
  }

  //Función para sumar puntos y cambiar la imagen de posicións
  void onGiftTap(Image image) {
    points++;
    setState(() {});
  }

  // Indicamos la función base al ejecutar
  @override
  void initState() {
    super.initState();
    getRandomImage();
    startTimer();
  }

  // Función para empezar
  void startTimer() {
    //Ejecutamos la función cada segundo
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      //Comprobamos si el widget todavía sigue activo
      if (!mounted) return;
      getRandomImage();
      setState(() {});
    });
  }

  // Creamos un método para que el widget se elimine automáticamente y podamos quitar el error
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    generateRandomPosition(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Atrapa al gato", style: GoogleFonts.mouseMemoirs()),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Color.fromARGB(255, 255, 241, 223),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Positioned(
                    top: 0,
                    child: ElevatedButton(
                      onPressed: _reset,
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
                        shadowColor: const Color.fromARGB(255, 0, 0, 0),
                        elevation: 15,
                      ),
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '$points',
                        style: GoogleFonts.mouseMemoirs(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        points == 1 ? "punto" : "puntos",
                        style: GoogleFonts.mouseMemoirs(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Positioned(
                    top: randomY,
                    left: randomX,
                    child: GestureDetector(
                      onTap: () {
                        onGiftTap(randomImage);
                      },
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: randomImage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
