import 'package:flutter/material.dart';
import '../drawer/drawer.dart';

// Pantalla que muestra imágenes repetidas en filas y columnas de forma responsive
class ImagenesResponsive extends StatelessWidget {
  const ImagenesResponsive({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filas y Columnas Anidadas")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Imagen de la primera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/81-CePGozIL.jpg",
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
              ],
            ),
            //2 imagenes de la segunda fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/91aOJCbAZNL._UF1000,1000_QL80_.jpg",
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/916IuScG4CL._UF1000,1000_QL80_.jpg",
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
              ],
            ),

            //3 imagenes de la tercera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/91QJ6giOJbL._AC_UF1000,1000_QL80_.jpg",
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/91-FhjVDJyL._UF1000,1000_QL80_.jpg",
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Image.network(
                  "https://m.media-amazon.com/images/I/91bGJCSfbyL._UF1000,1000_QL80_.jpg",
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
