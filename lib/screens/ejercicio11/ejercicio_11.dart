import 'package:flutter/material.dart';
import 'header.dart';

class PaginaInstagram extends StatelessWidget {
  const PaginaInstagram({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "maxelperro",
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
        ),
      ),
      body: Column(children: [const Header()]),
    );
  }
}
