import 'package:ejercicios/screens/examen/screens/pantalla3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key});
  @override
  MiPantalla2 createState() => MiPantalla2();
}

//Clase con nuestra pantalla
class MiPantalla2 extends State<Pantalla2> {
  final List<String> _opcion = ["AMD", "Intel"];
  late var _inicial = "AMD";
  bool _isSwitched = true;
  String? _selectedOption = 'A Seleccionar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sara 2 DAM", style: GoogleFonts.antonio()),
        backgroundColor: const Color.fromARGB(255, 207, 226, 255),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Elige tu procesador: ',
              style: GoogleFonts.anton(fontSize: 30),
            ),
            SizedBox(height: 10),
            _amdIntel(),
            SizedBox(height: 10),
            _isSwitched ? _opcionesAMD() : _opcionesIntel(),
            SizedBox(height: 30),
            //Botón para cambiar de pantalla
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 60),
                backgroundColor: const Color.fromARGB(255, 207, 226, 255),
                shadowColor: const Color.fromARGB(255, 0, 0, 0),
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Pantalla3()),
                );
              },
              child: Text(
                "Pantalla 3",
                style: GoogleFonts.anton(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget con la lista desplegable con las opciones de Intel o AMD
  Widget _amdIntel() {
    return Padding(
      padding: const EdgeInsetsGeometry.all(20),
      child: DropdownButtonFormField(
        initialValue: _inicial,
        onChanged: (String? valor) {
          setState(() {
            _inicial = valor!;
            if (valor == "Intel") {
              _isSwitched = false;
            } else if (valor == "AMD") {
              _isSwitched = true;
            }
          });
        },
        items: _elegirOpcion(),
      ),
    );
  }

  List<DropdownMenuItem<String>> _elegirOpcion() {
    List<DropdownMenuItem<String>> lista = [];
    for (var element in _opcion) {
      lista.add(
        DropdownMenuItem(
          value: element,
          child: Text(
            element,
            style: GoogleFonts.anton(
              fontSize: 20,
              color: Color.fromARGB(255, 88, 155, 255),
            ),
          ),
        ),
      );
    }
    return lista;
  }

  //Widget con las opciones en forma de selección de AMD
  Widget _opcionesAMD() {
    return RadioGroup<String>(
      groupValue: _selectedOption,

      onChanged: (value) {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RadioListTile<String>(
            value: 'Ryzen 3',
            title: Text('Ryzen 3', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'Ryzen 5',
            title: Text('Ryzen 5', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'Ryzen 7',
            title: Text('Ryzen 7', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'Ryzen 9',
            title: Text('Ryzen 9', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
        ],
      ),
    );
  }

  //Widget con las opciones en forma de selección de Intel
  Widget _opcionesIntel() {
    return RadioGroup<String>(
      groupValue: _selectedOption,

      onChanged: (value) {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RadioListTile<String>(
            value: 'i3',
            title: Text('i3', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'i5',
            title: Text('i5', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'i7',
            title: Text('i7', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
          RadioListTile<String>(
            value: 'i9',
            title: Text('i9', style: GoogleFonts.anton()),
            activeColor: Color.fromARGB(255, 88, 155, 255),
          ),
        ],
      ),
    );
  }
}
