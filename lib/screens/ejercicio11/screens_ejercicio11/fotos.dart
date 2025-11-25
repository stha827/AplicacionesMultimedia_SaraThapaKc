import 'package:flutter/material.dart';

//Patnalla 5, se trata de las publicaciones de instagram
class Fotos extends StatelessWidget {
  const Fotos({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.397,
          //Utilizamos GridView para poder hacer un scroll en caso de que haya muchos elementos
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              //Aquí indicamos tantas publicaciones como queramos
              Image.asset(
                './assets/screens11/fotos/foto1.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto2.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto3.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto4.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto5.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto6.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto7.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto8.jpeg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto9.jpeg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              Image.asset(
                './assets/screens11/fotos/foto10.jpg',
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
