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

  final List<String> _opRazaGato = [
    'Siberiano',
    'Egipcio',
    'Persa',
    'Maine Coon',
    'Oriental',
    'Siamés',
    'Bombay',
    'Irlandés',
    'Mestizo',
    'Otro',
  ];

  String _tipoRaza = 'Mestizo';
  bool _isSwitched = false;
  String _perroGato = 'Perro';
  String? _selectedOption = 'A Seleccionar';
  bool _machoHembra = false;
  String _seleccionPerro = 'Macho';
  String _seleccionGato = 'No';
  double _sliderValorPerro = 18.0;
  double _sliderValorGato = 20.0;

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
        _isSwitched ? _crearNombreGato() : _crearNombrePerro(),
        const SizedBox(height: 20),
        _isSwitched ? _crearDesplegableGato() : _crearDesplegablePerro(),
        const SizedBox(height: 20),
        _isSwitched ? _crearCheckBoxGato() : _crearCheckBoxPerro(),
        const SizedBox(height: 20),
        _isSwitched ? _crearRadioGato() : _crearRadioPerro(),
        _isSwitched ? _crearSliderGato() : _crearSliderPerro(),
        const SizedBox(height: 20),
        _isSwitched ? _visualizarDatosGato() : _visualizarDatosPerro(),
      ],
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
            if (_isSwitched == true) {
              _perroGato = "Gato";
              _tipoRaza = _opRazaGato.first;
            } else {
              _perroGato = "Perro";
              _tipoRaza = _opRazaPerro.first;
            }
          });
        },
        activeThumbColor: Color.fromARGB(255, 209, 134, 129),
        inactiveThumbColor: Color.fromARGB(255, 172, 191, 183),
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
      obscuringCharacter: '♡',
      maxLength: 20,
      decoration: InputDecoration(
        hintText: 'Contraseña de entrada',
        labelText: 'Contraseña',
        suffixIcon: const Icon(Icons.password),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }

  Widget _crearNombrePerro() {
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

  Widget _crearNombreGato() {
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
        helperText: 'Nombre de tu gatito',
        suffixIcon: const Icon(Icons.pets),
      ),
    );
  }

  Widget _crearDesplegablePerro() {
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

  Widget _crearDesplegableGato() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
        initialValue: _tipoRaza,
        onChanged: (String? valor) {
          setState(() {
            _tipoRaza = valor!;
          });
        },
        items: _crearItemsDropDownGato(),
      ),
    );
  }

  List<DropdownMenuItem<String>> _crearItemsDropDownGato() {
    List<DropdownMenuItem<String>> lista = [];
    for (var element in _opRazaGato) {
      lista.add(DropdownMenuItem(value: element, child: Text(element)));
    }
    return lista;
  }

  Widget _crearCheckBoxPerro() {
    return CheckboxListTile(
      title: const Text('Macho (Seleccionado)\nHembra (No seleccionado)'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: Colors.grey),
      ),
      value: _machoHembra,
      onChanged: (nuevoValor) {
        setState(() {
          _machoHembra = nuevoValor!;
          if (_machoHembra == true) {
            _seleccionPerro = "Macho";
          } else {
            _seleccionPerro = "Hembra";
          }
        });
      },
    );
  }

  Widget _crearCheckBoxGato() {
    return CheckboxListTile(
      title: const Text('¿Llevas al gato de paseo?'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: Colors.grey),
      ),
      value: _machoHembra,
      onChanged: (nuevoValor) {
        setState(() {
          _machoHembra = nuevoValor!;
          if (_machoHembra == true) {
            _seleccionGato = "Si";
          } else {
            _seleccionGato = "No";
          }
        });
      },
    );
  }

  Widget _crearRadioPerro() {
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
          RadioListTile<String>(value: 'Adoptado', title: Text('Adoptado')),
          RadioListTile<String>(value: 'Rescatado', title: Text('Rescatado')),
          RadioListTile<String>(value: 'Comprado', title: Text('Comprado')),
        ],
      ),
    );
  }

  Widget _crearRadioGato() {
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
          RadioListTile<String>(value: 'Naranja', title: Text('Naranja')),
          RadioListTile<String>(value: 'Tricolor', title: Text('Tricolor')),
          RadioListTile<String>(value: 'Negro', title: Text('Negro')),
          RadioListTile<String>(value: 'Otro', title: Text('Otro')),
        ],
      ),
    );
  }

  Widget _crearSliderPerro() {
    return Slider(
      value: _sliderValorPerro,
      onChanged: (nuevoValor) {
        setState(() {
          _sliderValorPerro = (nuevoValor.toInt()).toDouble();
        });
      },
      activeColor: Color.fromARGB(255, 172, 191, 183),
      inactiveColor: Color.fromARGB(255, 209, 134, 129),
      thumbColor: Color.fromARGB(255, 142, 109, 134),

      label: 'Edad:',
      min: 0,
      max: 35,
    );
  }

  Widget _crearSliderGato() {
    return Slider(
      value: _sliderValorGato,
      onChanged: (nuevoValor) {
        setState(() {
          _sliderValorGato = (nuevoValor.toInt()).toDouble();
        });
      },
      activeColor: Color.fromARGB(255, 172, 191, 183),
      inactiveColor: Color.fromARGB(255, 209, 134, 129),
      thumbColor: Color.fromARGB(255, 142, 109, 134),

      label: 'Edad:',
      min: 0,
      max: 39,
    );
  }

  Widget _visualizarDatosPerro() {
    return Column(
      children: [
        Text(
          'INFORMACIÓN',
          style: GoogleFonts.gloriaHallelujah(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color.fromARGB(255, 142, 109, 134),
          ),
        ),
        Text('Nombre Animal: $_nombre'),
        Text('Correo electrónico: $_correo'),
        Text('Contraseña: $_password'),
        Text('Raza: $_tipoRaza'),
        Text('Animal elegido: $_perroGato'),
        Text('Modo de incorporación: $_selectedOption'),
        Text('Sexo: $_seleccionPerro'),
        Text('Edad: ${_sliderValorPerro.toInt()}'),
      ],
    );
  }

  Widget _visualizarDatosGato() {
    return Column(
      children: [
        Text(
          'INFORMACIÓN',
          style: GoogleFonts.gloriaHallelujah(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color.fromARGB(255, 142, 109, 134),
          ),
        ),
        Text('Nombre Animal: $_nombre'),
        Text('Correo electrónico: $_correo'),
        Text('Contraseña: $_password'),
        Text('Raza: $_tipoRaza'),
        Text('Animal elegido: $_perroGato'),
        Text('Mentalidad de gato: $_selectedOption'),
        Text('Paseo: $_seleccionGato'),
        Text('Edad: ${_sliderValorGato.toInt()}'),
      ],
    );
  }
}
