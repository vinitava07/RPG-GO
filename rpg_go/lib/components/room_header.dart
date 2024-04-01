import 'package:flutter/material.dart';

class RoomHeader extends StatefulWidget {
  final String nomeHeader;
  const RoomHeader(String nome, {super.key}) : nomeHeader = nome;

  @override
  State<RoomHeader> createState() => _RoomHeaderState();
}

class _RoomHeaderState extends State<RoomHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: Text(
        widget.nomeHeader,
        style: const TextStyle(
          fontSize: 50,
          fontFamily: 'Revol',
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
