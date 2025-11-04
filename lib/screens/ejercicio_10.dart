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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Has pulsado", style: TextStyle(fontSize: 55))),
          Center(
            child: Text(
              _veces == 1 ? "$_veces vez" : "$_veces veces",
              style: TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            onPressed: _ponerCero,
            style: ElevatedButton.styleFrom(minimumSize: Size(150, 50)),
            child: Icon(Icons.exposure_zero),
          ),
        ],
      ),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementar,
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
