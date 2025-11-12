import 'package:flutter/material.dart';

class HeaderFotos extends StatelessWidget {
  const HeaderFotos({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 37.0, right: 37, top: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 2.0),
                  ),
                ),
                child: Image.asset(
                  './assets/screens11/iconos/publicacion.png',
                  height: 30,
                  width: 30,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 37.0, right: 37, top: 20),
                child: Image.asset(
                  './assets/screens11/iconos/reels.png',
                  height: 27,
                  width: 27,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 37.0, right: 37, top: 20),
                child: Image.asset(
                  './assets/screens11/iconos/comprar.png',
                  height: 25,
                  width: 25,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 37.0, right: 37, top: 20),
                child: Image.asset(
                  './assets/screens11/iconos/etiquetado.png',
                  height: 33,
                  width: 33,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
