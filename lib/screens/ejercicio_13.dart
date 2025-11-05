import 'package:flutter/material.dart';

class PaginaInstagram extends StatelessWidget {
  const PaginaInstagram({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi Reto")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("./assets/screens1/imagen_representativa.jpg"),
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 143, 206, 250),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
              child: const Text(
                "Sara Thapa Kc",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
