import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import '../drawer/drawer.dart';

// Pantalla con un juego que se ha mejorado proporcionado por el profesor
void main() {
  runApp(const RandomColors());
}

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  //Añadimos una variable del tiempo para poder ejecutar el código más adelante
  late Timer _timer = Timer(const Duration(seconds: 0), () {});

  //Creamos arrays de los colores y nombre de estos
  var colorNames = ['rojo', 'morado', 'negro', 'azul'];
  var colorHex = [
    const Color.fromARGB(255, 145, 5, 0),
    const Color.fromARGB(255, 112, 0, 156),
    const Color.fromARGB(255, 0, 0, 0),
    const Color.fromARGB(255, 0, 29, 90),
  ];

  //FUNCIONES
  //Obtenemos un color random
  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(4);
    randomColor = colorHex[randomNumber];
  }

  //Obtenemos un nombre random
  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(4);
    randomName = colorNames[randomNumber];
  }

  //Asignamos los valores
  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color.fromARGB(255, 145, 5, 0)) {
      return 'rojo';
    } else if (hexColor == const Color.fromARGB(255, 112, 0, 156)) {
      return 'morado';
    } else if (hexColor == const Color.fromARGB(255, 0, 0, 0)) {
      return 'negro';
    } else {
      return 'azul';
    }
  }

  // Comprobamos si los valores son correctos para sumar puntos o incorrectos para restar
  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }

  //Funcion para resetear a 0 y parar el juego
  _stop() {
    setState(() {
      points = 0;
    });
    _timer.cancel();
  }

  //Función para volver a iniciar el timer
  _start() {
    startTimer();
  }

  // Indicamos la función base al ejecutar
  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
  }

  // Función para empezar
  void startTimer() {
    _timer.cancel();
    //Ejecutamos la función cada segundo
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      //Comprobamos si el widget todavía sigue activo
      if (!mounted) return;
      getRandomColor();
      getRandomName();
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
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 231, 231, 231)),
      drawer: const MyDrawer(),
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Puntos: $points',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    Container(width: 120, color: randomColor, height: 120),
                    Text(
                      randomName,
                      style: TextStyle(
                        color: randomColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: _start,
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              backgroundColor: const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 15,
                            ),
                            child: Text(
                              "Start",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _stop,
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              backgroundColor: const Color.fromARGB(
                                255,
                                46,
                                46,
                                46,
                              ),
                              shadowColor: const Color.fromARGB(255, 0, 0, 0),
                              elevation: 15,
                            ),
                            child: Text(
                              "Stop",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
