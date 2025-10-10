import 'package:flutter/material.dart';

// Pantalla de Miniaturas en una columna
class MiniaturasScreen extends StatelessWidget {
  const MiniaturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Miniaturas")),
      body: Column(
        children: const [
          Image(
            image: AssetImage("./assets/screens3/lirios.webp"),
            height: 150,
          ),
          Image(
            image: AssetImage("./assets/screens3/radiata.jpg"),
            height: 150,
          ),
          Image(image: AssetImage("./assets/screens3/rosas.jpg"), height: 150),
        ],
      ),
    );
  }
}
