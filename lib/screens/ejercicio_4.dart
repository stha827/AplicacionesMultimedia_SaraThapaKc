import 'package:flutter/material.dart';

class IconosScreen extends StatelessWidget {
  const IconosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iconos")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [Icon(Icons.home)]),
            Row(children: [Icon(Icons.favorite)]),
            Row(children: [Icon(Icons.school)]),
            Row(children: [Icon(Icons.star)]),
            Row(children: [Icon(Icons.phone)]),
          ],
        ),
      ),
    );
  }
}
