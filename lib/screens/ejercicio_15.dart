import 'package:ejercicios/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

// 3 Textos con distintas fuentes y distintos modos de desbordamiento
class AdivinarNumero extends StatelessWidget {
  const AdivinarNumero({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Adivina el número")),
        drawer: const MyDrawer(),
        backgroundColor: const Color.fromARGB(255, 255, 251, 211), // #b1b080
        body: const Center(child: NumeroAleatorio()),
      ),
    );
  }
}

class NumeroAleatorio extends StatefulWidget {
  const NumeroAleatorio({super.key});
  @override
  NumeroAleatorioState createState() {
    return NumeroAleatorioState();
  }
}

void reset(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => NumeroAleatorio(),
    ), // tu widget de la página
  );
}

class NumeroAleatorioState extends State<NumeroAleatorio> {
  final _formKey = GlobalKey<FormState>();
  final random = Random();
  late int numeroAleatorio = (random.nextInt(100)) + 1;
  String value = "";

  String? pistas(String value) {
    if (value.isEmpty) {
      return "El campo no puede estar vacío";
    } else if (!(RegExp(r"[0-9]+$").hasMatch(value))) {
      return "Introduce un número entero por favor.";
    } else if ((RegExp(r"[0-9]+$").hasMatch(value))) {
      int numero = int.parse(value);
      if (numero == numeroAleatorio) {
        return "BRAVO";
      } else {
        if (numero > numeroAleatorio) {
          return "AY, el número secreto es menor al tuyo.";
        } else if (numero < numeroAleatorio) {
          return "UY, el número secreto es mayor al tuyo.";
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              validator: (value) {
                return pistas(value!);
              },
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 135, 111, 85),
                    width: 7,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 135, 111, 85),
                    width: 7,
                  ),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 135, 111, 85),
                    width: 7,
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 135, 111, 85),
                    width: 7,
                  ),
                ),
                errorStyle: GoogleFonts.bangers(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context);
                    print(NumeroAleatorio);
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(135, 60),
                  shadowColor: const Color.fromARGB(255, 175, 206, 198),
                  elevation: 15,
                  backgroundColor: const Color.fromARGB(255, 237, 160, 140),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text(
                  "Adivinar",
                  style: GoogleFonts.bangers(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(width: 100),
              ElevatedButton(
                onPressed: () {
                  reset(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(135, 60),
                  shadowColor: const Color.fromARGB(255, 237, 160, 140),
                  elevation: 15,
                  backgroundColor: const Color.fromARGB(255, 175, 206, 198),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Text(
                  "Reset",
                  style: GoogleFonts.bangers(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
