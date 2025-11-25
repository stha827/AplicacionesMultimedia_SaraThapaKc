import 'package:ejercicios/icons/fontelico_icons.dart';
import 'package:flutter/material.dart';
import '../drawer/drawer.dart';

//Pantalla con iconos en filas
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
            //Iconos personalizados
            Icon(FontelicoIcons.emo_devil),
            Icon(FontelicoIcons.emo_coffee),
            Icon(FontelicoIcons.emo_saint),
            Icon(FontelicoIcons.emo_thumbsup),
            Icon(FontelicoIcons.emo_sleep),
          ],
        ),
      ),
    );
  }
}
