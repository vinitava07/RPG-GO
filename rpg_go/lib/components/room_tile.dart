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
    return Card(
      color: Color.fromRGBO(0, 75, 91, 0.9),
      child: ListTile(
        leading: const Icon(
          Icons.shield,
          size: 30,
          color: Colors.amber,
        ),
        title: Text(
          nomeSala,
          style:
              TextStyle(fontSize: 20, fontFamily: 'Revol', color: Colors.white),
        ),
        dense: false,
        onTap: () {},
        contentPadding: EdgeInsets.all(30),
        trailing: Text(
          situacao,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
