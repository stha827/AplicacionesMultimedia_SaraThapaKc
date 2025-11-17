import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

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
  late Timer _timer;

  var colorNames = ['rojo', 'morado', 'negro'];
  var colorHex = [
    const Color.fromARGB(255, 145, 5, 0),
    const Color.fromARGB(255, 112, 0, 156),
    const Color.fromARGB(255, 0, 0, 0),
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    startTimer();
  }

  void startTimer() {
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
      appBar: AppBar(title: Text("Contador")),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color.fromARGB(255, 145, 5, 0)) {
      return 'rojo';
    } else if (hexColor == const Color.fromARGB(255, 112, 0, 156)) {
      return 'morado';
    } else {
      return 'negro';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
