import 'package:flutter/material.dart';
import 'package:rpg_go/pages/sheet_page.dart';

class RoomTile extends StatefulWidget {
  final String nomeSala;
  final int sheetId;
  final String situacao;

  const RoomTile(String nome, int id, String situ, {super.key})
      : nomeSala = nome,
        sheetId = id,
        situacao = situ;
  @override
  State<RoomTile> createState() => _RoomTileState();
}

class _RoomTileState extends State<RoomTile> {
  @override
  Widget build(BuildContext context) {
    int sheetId = widget.sheetId;
    return Card(
      color: const Color.fromRGBO(0, 75, 91, 0.9),
      child: ListTile(
        leading: const Icon(
          Icons.table_bar,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          widget.nomeSala,
          style: const TextStyle(
              fontSize: 24, fontFamily: 'Revol', color: Colors.white),
        ),
        dense: false,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                  final int sId = sheetId;
                  return SheetPage(sId);
                }));
        },
        contentPadding: const EdgeInsets.all(30),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            color: widget.situacao == 'Jogador'
                ? const Color.fromARGB(180, 66, 214, 223) 
                : widget.situacao == 'Mestre'
                    ? const Color.fromARGB(
                        180, 138, 149, 251)
                    : Colors.red, // Outras situações têm cor vermelha
            child: Text(
              widget.situacao,
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'Revol', fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
