import 'package:flutter/material.dart';

// Importamos las pantallas desde la carpeta screens
import 'screens/ejercicio_1.dart';
import 'screens/ejercicio_2.dart';
import 'screens/ejercicio_3.dart';
import 'screens/ejercicio_4.dart';
import 'screens/ejercicio_5.dart';
import 'screens/ejercicio_6.dart';
import 'screens/ejercicio_7.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Personalizado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const PaginaInicio(),
    );
  }
}

// Pantalla de inicio con el Drawer
class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Personalizado")),
      drawer: const MenuLateral(),
      body: const Center(child: Text("Abre el menú lateral para navegar")),
    );
  }
}

// Widget para el menú lateral (Drawer)
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
                image: NetworkImage(
                  "https://www.muyinteresante.com/wp-content/uploads/sites/5/2023/04/18/643e7ccdb1bb2.jpeg?resize=1024,683",
                ),
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
        ],
      ),
    );
  }
}
