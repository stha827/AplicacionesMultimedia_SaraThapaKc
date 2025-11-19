import 'package:flutter/material.dart';
import '../drawer.dart';

class IconosScreen extends StatelessWidget {
  const IconosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconos")),
      drawer: const MyDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.school),
            Icon(Icons.star),
            Icon(Icons.phone),
          ],
        ),
      ),
    );
  }
}
