import 'package:flutter/material.dart';

class RoomTile extends StatelessWidget {
  String nomeSala = "";
  String situacao = "";

  RoomTile(String nome, String situ, {Key? key})
      : nomeSala = nome,
        situacao = situ,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.shield,
        size: 30,
      ),
      title: Text(
        nomeSala,
        style: TextStyle(fontSize: 20, fontFamily: 'Revol'),
      ),
      dense: false,
      onTap: () {},
      trailing: Text(situacao),
    );
  }
}
