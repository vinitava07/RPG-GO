import 'package:flutter/material.dart';
import 'package:rpg_go/pages/sheet_page.dart';

class RoomTile extends StatefulWidget {
  final String nomeSala;
  final String situacao;

  const RoomTile(String nome, String situ, {super.key})
      : nomeSala = nome,
        situacao = situ;

  @override
  State<RoomTile> createState() => _RoomTileState();
}

class _RoomTileState extends State<RoomTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(0, 75, 91, 0.9),
      child: ListTile(
        leading: const Icon(
          Icons.shield,
          size: 30,
          color: Colors.amber,
        ),
        title: Text(
          widget.nomeSala,
          style: const TextStyle(
              fontSize: 20, fontFamily: 'Revol', color: Colors.white),
        ),
        dense: false,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SheetPage()));
        },
        contentPadding: const EdgeInsets.all(30),
        trailing: Text(
          widget.situacao,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
