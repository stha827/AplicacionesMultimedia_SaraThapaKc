import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    int posts = 6;
    int followers = 3333;
    int following = 4000;
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                'screens11/fotoPerfil.jpg',
                height: 100,
                width: 100,
              ),
            ),
          ),
          Column(children: [Text("$posts"), Text("Posts")]),
          Column(children: [Text("$followers"), Text("Followers")]),
          Column(children: [Text("$following"), Text("Following")]),
        ],
      ),
    );
  }
}
