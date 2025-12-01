import 'package:ejercicios/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 3 Textos con distintas fuentes y distintos modos de desbordamiento
class Formularios extends StatelessWidget {
  const Formularios({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 246, 235, 221)),
        drawer: const MyDrawer(),
        backgroundColor: const Color.fromARGB(255, 246, 235, 221), // #F6EBDD
        body: const Center(child: FormularioContenido()),
      ),
    );
  }
}

class FormularioContenido extends StatefulWidget {
  const FormularioContenido({super.key});
  @override
  FormulariosState createState() {
    return FormulariosState();
  }
}

void reset(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => FormularioContenido()),
  );
}

class FormulariosState extends State<FormularioContenido> {
  String _nombre = '';
  String _correo = '';
  String _password = '';

  final List<String> _opRazaPerro = [
    'Husky',
    'Pastor Alemán',
    'Malinosis',
    'Border Collie',
    'Golden Retriever',
    'Rottweiler',
    'Pomeranio',
    'Samoyedo',
    'Mestizo',
    'Otro',
  ];
  String _tipoRaza = 'Mestizo';

  bool _isSwitched = false;
  String? _selectedOption = 'Opción 1';
  bool _packTv = false;
  double _sliderValor = 18.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      children: [
        Text(
          "¿Tienes un perro \no un gato?",
          textAlign: TextAlign.center,
          style: GoogleFonts.gloriaHallelujah(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color.fromARGB(255, 142, 109, 134),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        _crearSwitch(),
        const SizedBox(height: 20),
        _crearEmail(),
        const SizedBox(height: 20),
        _crearPassword(),
        const SizedBox(height: 20),
        _crearNombre(),
        const SizedBox(height: 20),
        _crearDesplegable(),
        const SizedBox(height: 20),
        _crearCheckBox(),
        const SizedBox(height: 20),
        _crearRadio(),
        const SizedBox(height: 20),
        _crearSlider(),
        const SizedBox(height: 20),
        _visualizarDatos(),
      ],
    );
  }

  Widget _crearNombre() {
    return TextField(
      onChanged: (valor) => setState(() {
        _nombre = valor;
      }),
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: 'Nombre',
        labelText: 'Nombre',
        helperText: 'Nombre de tu perrito',
        suffixIcon: const Icon(Icons.pets),
      ),
    );
  }

  Widget _crearEmail() {
    return TextField(
      onChanged: (valor) => setState(() {
        _correo = valor;
      }),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'emailpersonal@correo.es',
        hintStyle: TextStyle(color: const Color.fromARGB(255, 142, 109, 134)),
        labelText: 'Email Personal',
        labelStyle: TextStyle(color: const Color.fromARGB(255, 142, 109, 134)),
        suffixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }

  Widget _crearPassword() {
    return TextField(
      onChanged: (valor) => setState(() {
        _password = valor;
      }),
      obscureText: true,
      obscuringCharacter: '-',
      maxLength: 20,
      decoration: InputDecoration(
        hintText: 'Contraseña de entrada',
        labelText: 'Contraseña',
        suffixIcon: const Icon(Icons.password),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }

  Widget _crearDesplegable() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField(
        initialValue: _tipoRaza,
        onChanged: (String? valor) {
          setState(() {
            _tipoRaza = valor!;
          });
        },
        items: _crearItemsDropDown(),
      ),
    );
  }

  List<DropdownMenuItem<String>> _crearItemsDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    for (var element in _opRazaPerro) {
      lista.add(DropdownMenuItem(value: element, child: Text(element)));
    }
    return lista;
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: const Text('Pack TV:'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: Colors.grey),
      ),
      value: _packTv,
      onChanged: (nuevoValor) {
        setState(() {
          _packTv = nuevoValor!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return Transform.scale(
      scale: 1.3,
      child: Switch(
        value: _isSwitched,
        onChanged: (value) {
          setState(() {
            _isSwitched = value;
          });
        },
        activeThumbColor: Color.fromARGB(255, 209, 134, 129),
        inactiveThumbColor: Color.fromARGB(255, 172, 191, 183),
      ),
    );
  }

  Widget _crearRadio() {
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
            value: 'Oferta individual',
            title: Text('Adoptado'),
          ),
          RadioListTile<String>(
            value: 'Oferta general',
            title: Text('Rescatado'),
          ),
          RadioListTile<String>(value: 'Oferta local', title: Text('Comprado')),
        ],
      ),
    );
  }

  Widget _crearSlider() {
    Text("HOLA");
    return Slider(
      value: _sliderValor,
      onChanged: (nuevoValor) {
        setState(() {
          _sliderValor = (nuevoValor.toInt()).toDouble();
        });
      },
      activeColor: Colors.amber,
      inactiveColor: Colors.black87,
      thumbColor: Colors.blue,

      label: 'Edad:',
      min: 0,
      max: 35,
    );
  }

  Widget _visualizarDatos() {
    return Column(
      children: [
        Text('Nombre: $_nombre'),
        Text('Correo electrónico: $_correo'),
        Text('Contraseña: $_password'),
        Text('Tipo de contrato: $_tipoRaza'),
        Text('Valor del switch: $_isSwitched'),
        Text('Valor del Radio: $_selectedOption'),
        Text('Pack TV: $_packTv'),
        Text('Edad: ${_sliderValor.toInt()}'),
      ],
    );
  }
}
