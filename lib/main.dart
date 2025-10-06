import 'package:flutter/material.dart';

// Importamos las pantallas desde la carpeta screens
import 'screens/info_screen.dart';
import 'screens/foto_screen.dart';
import 'screens/miniaturas_screen.dart';
import 'screens/iconos_screen.dart';
import 'screens/imagenes_screen.dart';

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
      body: const Center(
        child: Text("Abre el menú lateral para navegar"),
      ),
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
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("Información"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const InfoScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Mi Foto"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FotoScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.image_search),
            title: const Text("Miniaturas"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MiniaturasScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Iconos"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const IconosScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.collections),
            title: const Text("Imágenes en columnas"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ImagenesScreen()));
            },
          ),
        ],
      ),
    );
  }
}