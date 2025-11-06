import 'destacadas.dart';
import 'package:flutter/material.dart';
import 'header.dart';
import 'botonesFalsos.dart';

class PaginaInstagram extends StatelessWidget {
  const PaginaInstagram({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "maxelperro",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(children: [Header(), BotonesFalsos(), Destacadas()]),
    );
  }
}
