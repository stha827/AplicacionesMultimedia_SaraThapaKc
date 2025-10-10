import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Pantalla de Información con nombre y enlace al repositorio
class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Información")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sara Thapa Kc", style: GoogleFonts.pacifico(fontSize: 28)),
            const SizedBox(height: 10),
            Text(
              "Repositorio: https://github.com/stha827/AplicacionesMultimedia_SaraThapaKc",
              style: GoogleFonts.robotoMono(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
