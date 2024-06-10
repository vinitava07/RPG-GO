import 'package:flutter/material.dart';
import 'package:rpg_go/pages/edit_sheet_page.dart';
import 'package:rpg_go/pages/sheet_page.dart';

class PlayerTileAdd extends StatelessWidget {
  final String playerName;
  final int sheetId;
  final int roomId;
  const PlayerTileAdd(String name, int id, {super.key, required this.roomId}) : playerName = name, sheetId = id;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(66, 214, 223, 0.9),
      child: ListTile(
        leading: const Icon(
          Icons.person,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          playerName,
          style: const TextStyle(
              fontSize: 20, fontFamily: 'Revol', color: Colors.white),
        ),
        dense: false,
        onTap: () {
          Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  final int sId = sheetId; // ou qualquer outra lógica para calcular sheetId
                  return SheetPage(sId, bt: ButtonType.addSheet, roomId: roomId);
                }));
        },
        contentPadding: const EdgeInsets.all(30),
        
      ),
    );
  }
}
