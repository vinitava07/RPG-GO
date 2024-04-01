import 'package:flutter/material.dart';

class RoomHeader extends StatelessWidget {
  String nomeHeader = "";
  RoomHeader(String nome, {super.key}) : nomeHeader = nome;

  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.black,
      padding: EdgeInsets.all(20),
      child: Text(
        nomeHeader,
        style: const TextStyle(
          fontSize: 50,
          fontFamily: 'Revol',
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
