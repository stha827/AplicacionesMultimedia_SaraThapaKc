import 'dart:ui';

import 'package:flutter/material.dart';

class ContadorClics extends StatefulWidget {
  const ContadorClics({super.key});
  @override
  State<ContadorClics> createState() => _ContadorClicsState();
}

class _ContadorClicsState extends State<ContadorClics> {
  int _veces = 0;

  _incrementar() {
    setState(() {
      _veces++;
    });
  }

  _restar() {
    setState(() {
      _veces--;
    });
  }

  _ponerCero() {
    setState(() {
      _veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contador")),
      backgroundColor: const Color.fromARGB(255, 255, 215, 239),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Has pulsado",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 160, 219),
              ),
            ),
          ),
          Center(
            child: Text(
              _veces == 1 ? "$_veces vez" : "$_veces veces",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: _ponerCero,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(150, 50),
              backgroundColor: const Color.fromARGB(255, 255, 202, 243),
            ),
            child: Text(
              "Reset",
              style: TextStyle(color: const Color.fromARGB(255, 97, 25, 91)),
            ),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementar,
            backgroundColor: Colors.black,
            tooltip: "Incrementar",
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: _restar,
            tooltip: "Restar",
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
