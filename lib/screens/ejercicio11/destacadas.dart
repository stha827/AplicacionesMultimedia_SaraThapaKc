import 'package:flutter/material.dart';

class Destacadas extends StatelessWidget {
  const Destacadas({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Utilizamos SizedBox ya que sirve mejor que un Container para separar widgets y crear espacio
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        './assets/screens11/destacadas/animales.jpg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Animales"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, top: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        './assets/screens11/destacadas/autofoto.jpg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Yo"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, top: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        './assets/screens11/destacadas/comida.jpg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Comida"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, top: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        './assets/screens11/destacadas/humanos.jpg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Humanos"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0, top: 20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Image.asset(
                        './assets/screens11/destacadas/paseo.jpg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text("Paseos"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
