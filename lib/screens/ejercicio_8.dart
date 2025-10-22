import 'package:flutter/material.dart';

class ImagenesResponsive extends StatelessWidget {
  const ImagenesResponsive({super.key});
  // Creamos una pantalla que muestra imágenes repetidas en filas y columnas
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filas y Columnas Anidadas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Imagen desde assets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(
                    "./assets/screens1/imagen_representativa.jpg",
                  ),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            // Imagen desde internet repetida 2 veces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://i.scdn.co/image/ab67616d00001e025a0c2870f4f309e382d1fad6",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab67616d00001e025a0c2870f4f309e382d1fad6",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            // Imagen desde internet repetida 3 veces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
