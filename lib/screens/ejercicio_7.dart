import 'package:flutter/material.dart';

// Añadimos una pantalla que muestra imágenes en una columna
class ImagenesRepetidas extends StatelessWidget {
  const ImagenesRepetidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Imágenes desde distintos orígenes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage("./assets/screens7/album1.jpg"),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),

              // Imagen desde internet
              Image.network(
                "https://i.scdn.co/image/ab67616d00001e025a0c2870f4f309e382d1fad6",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),

              // Imagen repetida (por ejemplo, la misma de assets)
              Image.network(
                "https://i.scdn.co/image/ab6761610000e5ebdf0b5ac84376a0a4b2166816",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
    );
  }
}
