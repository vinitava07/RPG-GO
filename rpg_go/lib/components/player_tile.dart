import 'package:flutter/material.dart';
import 'package:rpg_go/pages/edit_sheet_page.dart';
import 'package:rpg_go/pages/sheet_page.dart';

class PlayerTile extends StatelessWidget {
  final String playerName;
  final int sheetId;
  final int userId;
  const PlayerTile(this.playerName, this.sheetId, this.userId, {super.key});

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

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            final int sId =
                sheetId; // ou qualquer outra lógica para calcular sheetId
            return SheetPage(
              sheetId: sId,
              userId: userId,
              bt: ButtonType.editSheet,
            );
          }));
        },
        contentPadding: const EdgeInsets.all(30),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(228, 4, 53, 56)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditSheetPage(true, userId)));
          },
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
