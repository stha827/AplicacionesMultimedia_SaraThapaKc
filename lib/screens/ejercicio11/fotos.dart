import 'package:flutter/material.dart';

class Fotos extends StatelessWidget {
  const Fotos({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Utilizamos SizedBox ya que sirve mejor que un Container para separar widgets y crear espacio
        SizedBox(
          height: 200,
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto1.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto2.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto3.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto4.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto5.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto6.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto7.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto8.jpeg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto9.jpeg',
                  height: 200,
                  width: 200,
                ),
              ),
              Expanded(
                child: Image.asset(
                  'screens11/fotos/foto10.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
