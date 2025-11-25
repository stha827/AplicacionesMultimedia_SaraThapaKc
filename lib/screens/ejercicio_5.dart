import 'package:flutter/material.dart';
import '../drawer/drawer.dart';

// Añadimos una pantalla que muestra imágenes en una columna
class ImagenesScreen extends StatelessWidget {
  const ImagenesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Imágenes en columnas")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Expanded(
              child: Image(
                image: AssetImage("./assets/screens5/libro1.jpg"),
                height: 150,
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage("./assets/screens5/libro2.jpg"),
                height: 150,
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage("./assets/screens5/libro3.jpg"),
                height: 150,
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage("./assets/screens5/libro4.jpg"),
                height: 150,
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage("./assets/screens5/libro5.jpg"),
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
