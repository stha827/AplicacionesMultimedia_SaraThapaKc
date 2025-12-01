import 'package:flutter/material.dart';

// Importamos las pantallas de la carpeta screens
import '../screens/ejercicio_1.dart';
import '../screens/ejercicio_2.dart';
import '../screens/ejercicio_3.dart';
import '../screens/ejercicio_4.dart';
import '../screens/ejercicio_5.dart';
import '../screens/ejercicio_6.dart';
import '../screens/ejercicio_7.dart';
import '../screens/ejercicio_8.dart';
import '../screens/ejercicio_9.dart';
import '../screens/ejercicio_10.dart';
import '../screens/ejercicio11/ejercicio_11.dart';
import '../screens/ejercicio_12.dart';
import '../screens/ejercicio_13.dart';
import '../screens/ejercicio_14.dart';
import '../screens/ejercicio_15.dart';
import '../screens/ejercicio_16.dart';

// Widget para el menú lateral (Drawer)
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //Variable para comprobar el color que se haya añadido
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      //En caso de que este sera verdadero se añade un color, si no se le añade otro
      backgroundColor: isDark ? const Color(0xFF1E1E1E) : Colors.white,
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
            leading: const Icon(
              Icons.info,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 1"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const InfoScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 2"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FotoScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.image_search,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 3"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MiniaturasScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.star,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 4"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const IconosScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.collections,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 5"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.text_format,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 6"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TextosFilas()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.image_aspect_ratio_rounded,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 7"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesRepetidas()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.filter,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 8"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesResponsive()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.phonelink,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: const Text("Ejercicio 9"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RetosPagina()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exposure,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 10"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ContadorClics()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.live_tv,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 11"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PaginaInstagram()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.brush, color: Color.fromARGB(255, 163, 0, 76)),
            title: Text("Ejercicio 12"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RandomColors()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.play_arrow,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 13"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ImagenesAleatorias()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.brightness_6,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 14"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DarkTheme()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.extension,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 15"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AdivinarNumero()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.access_alarm,
              color: Color.fromARGB(255, 163, 0, 76),
            ),
            title: Text("Ejercicio 16"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Formularios()),
              );
            },
          ),
        ],
      ),
    );
  }
}
