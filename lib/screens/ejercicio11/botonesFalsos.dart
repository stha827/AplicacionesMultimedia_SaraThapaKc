import 'package:flutter/material.dart';

class BotonesFalsos extends StatelessWidget {
  const BotonesFalsos({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Utilizamos SizedBox ya que sirve mejor que un Container para separar widgets y crear espacio
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.381)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Following",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),

                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.381)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Message",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.381)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 15, right: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.381)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(Icons.arrow_drop_down),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
