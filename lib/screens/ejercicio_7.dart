import 'package:flutter/material.dart';
import 'drawer.dart';

class ImagenesRepetidas extends StatelessWidget {
  const ImagenesRepetidas({super.key});
  // Creamos una pantalla que muestra imágenes repetidas en filas y columnas
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imágenes repetidas")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Imagen desde assets
            Row(
              children: [
                Image(
                  image: AssetImage("./assets/screens7/album1.jpg"),
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
              ],
            ),

            // Imagen desde internet repetida 2 veces
            Row(
              children: [
                Image.network(
                  "https://i.scdn.co/image/ab67616d00001e025a0c2870f4f309e382d1fad6",
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab67616d00001e025a0c2870f4f309e382d1fad6",
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
              ],
            ),

            // Imagen desde internet repetida 3 veces
            Row(
              children: [
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
                Image.network(
                  "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                  width: MediaQuery.of(context).size.width * 0.33,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
