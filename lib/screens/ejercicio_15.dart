import 'package:ejercicios/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
        backgroundColor: const Color.fromARGB(255, 167, 167, 167),
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

class NumeroAleatorioState extends State<NumeroAleatorio> {
  final _formKey = GlobalKey<FormState>();
  final random = Random();
  late int numeroAleatorio = (random.nextInt(100)) + 1;

  String? pistas(String value) {
    if (value.isEmpty) {
      return 'El campo no puede estar vacío';
    } else if (!(RegExp(r"[0-9]+$").hasMatch(value))) {
      return "$numeroAleatorio";
    } else if ((RegExp(r"[0-9]+$").hasMatch(value))) {
      int numero = int.parse(value);
      if (numero == numeroAleatorio) {
        return "BRAVO";
      } else {
        if (numero > numeroAleatorio) {
          return "UY, el número secreto es menor al tuyo";
        } else if (numero < numeroAleatorio) {
          return "UY, el número secreto es mayor al tuyo";
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              validator: (value) {
                return pistas(value!);
              },

              decoration: const InputDecoration(
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 56, 0, 78),
                    width: 10,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 56, 0, 78),
                    width: 10,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 56, 0, 78),
                    width: 10,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 56, 0, 78),
                    width: 10,
                  ),
                ),
                errorStyle: TextStyle(
                  color: Color.fromARGB(255, 192, 0, 134),
                  fontSize: 20,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text("Enviando...")));
                  print(NumeroAleatorio);
                }
              },
              child: const Text('Adivinar'),
            ),
          ),
        ],
      ),
    );
  }
}
