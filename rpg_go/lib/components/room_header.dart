import 'package:flutter/material.dart';

class RoomHeader extends StatefulWidget {
  final String nomeHeader;
  final double fontSize;
  final double padding;
  const RoomHeader(String nome, {this.fontSize = 50, this.padding = 20, super.key}) : nomeHeader = nome;

  @override
  State<RoomHeader> createState() => _RoomHeaderState();
}

class _RoomHeaderState extends State<RoomHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      color: Colors.black,
      padding: EdgeInsets.all(widget.padding),
      child: Text(
        widget.nomeHeader,
        style: TextStyle(
          fontSize: widget.fontSize,
          fontFamily: 'Revol',
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
