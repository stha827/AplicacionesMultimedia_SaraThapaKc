import 'package:flutter/material.dart';

//Pantalla 3, dedicada a las destacadascde instagram
class Destacadas extends StatelessWidget {
  const Destacadas({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          //Urtilizamos ListView para poder hacer un scroll horizontal en caso de que hayan muchos elementos
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              //Destacada 1
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
              //Destacada 2
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
              //Destacada 3
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
              //Destacada 4
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
              //Destacada 5
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
