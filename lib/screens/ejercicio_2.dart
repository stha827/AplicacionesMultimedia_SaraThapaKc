import 'package:flutter/material.dart';

// Añadimos una imagen nuestra que nos represente justo con nuestro nombre
class FotoScreen extends StatelessWidget {
  const FotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi foto")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image:  AssetImage("./assets/screens1/imagen_representativa.jpg"),
            fit: BoxFit.cover,
            ),
            Text("Sara Thapa Kc", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
