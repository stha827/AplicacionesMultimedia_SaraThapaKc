import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../drawer/drawer.dart';

// Pantalla con un estilo sacada del enlace de los ejercicios. El ejercicio al cual se le ha añadido el estilo es al ejercicio 2
class RetosPagina extends StatelessWidget {
  const RetosPagina({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi Reto")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                image: AssetImage(
                  "./assets/screens1/imagen_representativa.jpg",
                ),
              ),
            ),
            Expanded(
              //Añadimos un padding para que el contenedor ocupe solo un porcentaje en la pantalla
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.32,
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 143, 206, 250),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                    ),
                  ),
                  child: AutoSizeText(
                    "Sara Thapa Kc",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
