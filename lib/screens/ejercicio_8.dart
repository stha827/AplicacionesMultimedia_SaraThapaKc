import 'package:flutter/material.dart';

class ImagenesResponsive extends StatelessWidget {
  const ImagenesResponsive({super.key});
  // Creamos una pantalla que muestra imágenes repetidas en filas y columnas de forma responsive
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filas y Columnas Anidadas")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Imagen desde internet
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/81-CePGozIL.jpg",
                  width: 150,
                  height: 200,
                ),
              ],
            ),

            // Imagen desde internet repetida 2 veces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/91aOJCbAZNL._UF1000,1000_QL80_.jpg",
                  width: 150,
                  height: 200,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/916IuScG4CL._UF1000,1000_QL80_.jpg",
                  width: 150,
                  height: 200,
                ),
              ],
            ),

            // Imagen desde internet repetida 3 veces
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/91QJ6giOJbL._AC_UF1000,1000_QL80_.jpg",
                  width: 150,
                  height: 200,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/91-FhjVDJyL._UF1000,1000_QL80_.jpg",
                  width: 150,
                  height: 200,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/91bGJCSfbyL._UF1000,1000_QL80_.jpg",
                  width: 150,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
