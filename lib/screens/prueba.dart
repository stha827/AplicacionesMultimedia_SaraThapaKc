import 'package:flutter/material.dart';

class P extends StatefulWidget {
  const P({super.key});

  @override
  State<P> createState() => _DialogoState();
}

class _DialogoState extends State<P> {
  // Método que muestra el mensaje de alerta con AlertDialog
  void mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Información'),
          content: const SingleChildScrollView(
            child: Text(
              'Este es un mensaje de alerta',
              style: TextStyle(fontSize: 60),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el AlertDialog
              },
              child: const Text('Okay'),
            ),
          ],
        );
      },
    );
  }

  // Método para mostrar el diáologo de alerta con SimpleDialog
  void mostrarSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('¿Te gusta Flutter?'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Por supuesto, es genial'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Para nada, es horrible'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    // La instrucción siguiente espera a que se cargue completamente
    // la página para lanzar la pantalla de diálogo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostrarSimpleDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        mostrarAlertDialog(context);
      },
      child: const Text('Mostrar AlertDialog'),
    );
  }
}
