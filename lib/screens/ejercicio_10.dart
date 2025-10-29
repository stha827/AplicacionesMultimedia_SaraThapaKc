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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "asgas",
      home: Scaffold(
        appBar: AppBar(title: Text("Contador")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Has pulsado:", style: TextStyle(fontSize: 25))),
            Center(
              child: Text(
                _veces == 1 ? "$_veces vez" : "$_veces veces",
                style: TextStyle(fontSize: 35),
              ),
            ),
            const Row(
              ElevatedButton(
                onPressed: _ponerCero,
                child: Icon(Icons.exposure_zero),
              ),
              ElevatedButton(onPressed: _ponerCero, child: Icon(Icons.abc)),
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
      ),
    );
  }
}
