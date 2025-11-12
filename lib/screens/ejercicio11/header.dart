import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    int posts = 6;
    int followers = 3333;
    int following = 4000;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: ClipOval(
                  child: Image.asset(
                    './assets/screens11/fotoPerfil.jpg',
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.width * 0.15,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Column(
                  children: [
                    Text(
                      "$posts",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Posts"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Column(
                  children: [
                    Text(
                      "$followers",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Followers"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  top: MediaQuery.of(context).size.height * 0.02,
                ),
                child: Column(
                  children: [
                    Text(
                      "$following",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Following"),
                  ],
                ),
              ),
            ],
          ),
          // Utilizamos SizedBox ya que sirve mejor que un Container para separar widgets y crear espacio
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maxi El Perro <3",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Perro",
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
                  ),
                  Text("Soy de Nerja 🏖️"),
                  Text("Tengo 7 añitos 🐶"),
                  Text("#woofwoof", style: TextStyle(color: Colors.indigo)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Followed by"),
                  Text(
                    " sxarxaw, doglover123 y 9 otros",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
