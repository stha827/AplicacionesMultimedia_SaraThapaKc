import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'dart:async';
import '../drawer/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  late double randomX = 150;
  late double randomY = 150;
  int points = 0;
  late Timer _timer = Timer(const Duration(seconds: 0), () {});
  var imagenes = [
    './assets/screens13/img1.jpg',
    './assets/screens13/img2.jpg',
    './assets/screens13/img3.jpg',
    './assets/screens13/img4.jpg',
    './assets/screens13/img5.jpg',
  ];
  late Image randomImage = Image.asset(imagenes[0]);
  bool dificil = false;

  // Obtenemos una imagen random del array
  void getRandomImage() {
    Random random = Random();
    int randomNumber = random.nextInt(imagenes.length);
    randomImage = Image.asset(imagenes[randomNumber]);
  }

  //Generamos una posición aleatoria
  void generateRandomPosition(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final maxWidth = 150;
    final maxHeight = size.height - 220;
    final minHeight = 180;
    final heightValido = maxHeight - minHeight;

    randomX = Random().nextDouble() * maxWidth;
    randomY = minHeight + Random().nextDouble() * heightValido;
  }

  //Funcion para el modo de juego fácil
  _facil() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('dificil', false);
    });
    _timer.cancel();
  }

  //Funcion para el modo de juego dificil
  _dificil() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {});
    prefs.setBool('dificil', true);
    startTimer();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      //Comprobamos si el widget todavía sigue activo
      if (!mounted) return;
      getRandomImage();
      generateRandomPosition(context);
      setState(() {});
    });
  }

  //Función de resetear el contador
  _reset() {
    setState(() {
      points = 0;
    });
  }

  //Función para sumar puntos y cambiar la imagen de posicións
  void onGiftTap(Image image) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      points++;
    });
    await prefs.setInt('puntos', points);
  }

  // Indicamos la función base al ejecutar
  @override
  void initState() {
    super.initState();
    startTimer();
    loadCounter();
  }

  // Función para empezar
  void startTimer() {
    _timer.cancel();
  }

  // Función para guardar los datos anteriores
  loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      points = prefs.getInt('puntos') ?? -1;
      dificil = prefs.getBool('dificil')!;
      if (dificil == true) {
        _dificil();
      } else {
        _facil();
      }
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
        backgroundColor: Color.fromARGB(255, 255, 234, 207),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Color.fromARGB(255, 255, 241, 223),
      body: Center(
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: ElevatedButton(
                    onPressed: _dificil,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 90),
                      shadowColor: const Color.fromARGB(255, 255, 213, 134),
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text(
                      "Difícil",
                      style: GoogleFonts.mouseMemoirs(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    onPressed: _facil,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 90),
                      shadowColor: const Color.fromARGB(255, 0, 0, 0),
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text(
                      "Fácil",
                      style: GoogleFonts.mouseMemoirs(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Column(
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
                  ),
                ),
              ],
            ),
            Positioned(
              top: 103,
              left: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: _reset,
                style: ElevatedButton.styleFrom(
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 2,
                  backgroundColor: const Color.fromARGB(97, 156, 83, 0),
                  minimumSize: Size(10, 40),
                ),
                child: Text(
                  "Reset",
                  style: GoogleFonts.mouseMemoirs(
                    fontSize: 17,
                    color: const Color.fromARGB(255, 255, 244, 232),
                  ),
                ),
              ),
            ),
            //Diálogo
            Positioned(
              top: 147,
              left: 0,
              right: 0,
              child: Center(child: MostrarSnackBar()),
            ),
            //Imágenes
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

class MostrarSnackBar extends StatelessWidget {
  const MostrarSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text(
              'Modo Difícil: Se trata de varios gatos que se irán moviendo cada medio segundo\n\nModo Fácil: Se trata de un gato que cambiara de posición cada vez que lo atrapemos',
            ),
            action: SnackBarAction(label: 'x', onPressed: () {}),
            backgroundColor: const Color.fromARGB(255, 75, 40, 0),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text(
          'Modos de juego',
          style: GoogleFonts.mouseMemoirs(
            fontSize: 17,
            color: const Color.fromARGB(255, 161, 86, 0),
          ),
        ),
      ),
    );
  }
}
