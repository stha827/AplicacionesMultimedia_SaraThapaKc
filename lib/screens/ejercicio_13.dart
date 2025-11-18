import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const ImagenesAleatorias());
}

class ImagenesAleatorias extends StatefulWidget {
  const ImagenesAleatorias({super.key});

  @override
  State<ImagenesAleatorias> createState() => _RandomColors();
}

class _RandomColors extends State<ImagenesAleatorias> {
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

  void getRandomImage() {
    Random random = Random();
    int randomNumber = random.nextInt(imagenes.length);
    randomImage = Image.asset(imagenes[randomNumber]);
  }

  void generateRandomPosition(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxWidth = size.width - 150;
    final maxHeight = size.height - 150;

    randomX = Random().nextDouble() * maxWidth;
    randomY = Random().nextDouble() * maxHeight;
  }

  void onGiftTap(Image image) {
    points++;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getRandomImage();
    startTimer();
  }

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
      appBar: AppBar(title: Text("Contador")),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    '$points',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Puntos',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
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
