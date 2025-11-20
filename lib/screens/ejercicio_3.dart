import 'package:flutter/material.dart';
import 'drawer.dart';

// Pantalla de Miniaturas en una columna
class MiniaturasScreen extends StatelessWidget {
  const MiniaturasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Miniaturas")),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Image(
              image: AssetImage("./assets/screens3/lirios.webp"),
              height: 150,
            ),
            Image(
              image: AssetImage("./assets/screens3/radiata.jpg"),
              height: 150,
            ),
            Image(
              image: AssetImage("./assets/screens3/rosas.jpg"),
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
