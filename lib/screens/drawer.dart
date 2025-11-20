import 'package:ejericio1_sarathapa/screens/ejercicio_10.dart';
import 'package:flutter/material.dart';

// Importamos las pantallas desde la carpeta screens
import 'ejercicio_1.dart';
import 'ejercicio_2.dart';
import 'ejercicio_3.dart';
import 'ejercicio_4.dart';
import 'ejercicio_5.dart';
import 'ejercicio_6.dart';
import 'ejercicio_7.dart';
import 'ejercicio_8.dart';
import 'ejercicio_9.dart';
import 'ejercicio11/ejercicio_11.dart';
import 'ejercicio_12.dart';
import 'ejercicio_13.dart';
import 'ejercicio_14.dart';

// Widget para el menú lateral (Drawer)
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              "Sara Thapa Kc",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "sara@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/banner.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const InfoScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Ejercicio 2"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FotoScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image_search),
            title: const Text("Ejercicio 3"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MiniaturasScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Ejercicio 4"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const IconosScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.collections),
            title: const Text("Ejercicio 5"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.text_format),
            title: const Text("Ejercicio 6"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TextosFilas()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image_aspect_ratio_rounded),
            title: const Text("Ejercicio 7"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesRepetidas()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.filter),
            title: const Text("Ejercicio 8"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesResponsive()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phonelink),
            title: const Text("Ejercicio 9"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RetosPagina()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exposure),
            title: Text("Ejercicio 10"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContadorClics()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.live_tv),
            title: Text("Ejercicio 11"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PaginaInstagram()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.brush),
            title: Text("Ejercicio 12"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RandomColors()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.play_arrow),
            title: Text("Ejercicio 13"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesAleatorias()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text("Ejercicio 14"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DarkTheme()),
              );
            },
          ),
        ],
      ),
    );
  }
}
