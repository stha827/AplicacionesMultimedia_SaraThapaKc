import 'package:flutter/material.dart';

class IconosScreen extends StatelessWidget {
  const IconosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconos")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.home, size: 50),
          Icon(Icons.favorite, size: 50),
          Icon(Icons.school, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.phone, size: 50),
        ],
      ),
    );
  }
}
